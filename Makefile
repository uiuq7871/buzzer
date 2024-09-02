KDIR := /lib/modules/$(shell uname -r)/build

# 指定要編譯的模組名
obj-m := biz.o

# 編譯模組的目標
all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

# 清理編譯產生的文件
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
