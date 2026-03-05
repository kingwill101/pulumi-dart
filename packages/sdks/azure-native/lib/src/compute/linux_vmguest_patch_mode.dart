/// Specifies the mode of VM Guest Patching to IaaS virtual machine or virtual machines associated to virtual machine scale set with OrchestrationMode as Flexible.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **ImageDefault** - The virtual machine's default patching configuration is used. &lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - The virtual machine will be automatically updated by the platform. The property provisionVMAgent must be true
enum LinuxVMGuestPatchMode {
  imageDefault("ImageDefault"),
  automaticByPlatform("AutomaticByPlatform");

  const LinuxVMGuestPatchMode(this.wireValue);
  final String wireValue;

  static LinuxVMGuestPatchMode fromValue(String value) {
    for (final item in LinuxVMGuestPatchMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxVMGuestPatchMode value: $value');
  }
}

