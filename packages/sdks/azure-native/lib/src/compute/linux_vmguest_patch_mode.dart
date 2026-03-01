/// Specifies the mode of VM Guest Patching to IaaS virtual machine or virtual machines associated to virtual machine scale set with OrchestrationMode as Flexible.<br /><br /> Possible values are:<br /><br /> **ImageDefault** - The virtual machine's default patching configuration is used. <br /><br /> **AutomaticByPlatform** - The virtual machine will be automatically updated by the platform. The property provisionVMAgent must be true
enum LinuxVMGuestPatchMode {
  imageDefault("ImageDefault"),
  automaticByPlatform("AutomaticByPlatform");

  const LinuxVMGuestPatchMode(this.value);
  final String value;

  static LinuxVMGuestPatchMode fromValue(String value) {
    for (final item in LinuxVMGuestPatchMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxVMGuestPatchMode value: $value');
  }
}

