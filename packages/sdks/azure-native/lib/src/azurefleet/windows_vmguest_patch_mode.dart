import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the mode of VM Guest Patching to IaaS virtual machine or virtual
/// machines associated to virtual machine scale set with OrchestrationMode as
/// Flexible.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **Manual** - You
/// control the application of patches to a virtual machine. You do this by
/// applying patches manually inside the VM. In this mode, automatic updates are
/// disabled; the property WindowsConfiguration.enableAutomaticUpdates must be
/// false&lt;br /&gt;&lt;br /&gt; **AutomaticByOS** - The virtual machine will automatically be
/// updated by the OS. The property WindowsConfiguration.enableAutomaticUpdates
/// must be true. &lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - the virtual machine will
/// automatically updated by the platform. The properties provisionVMAgent and
/// WindowsConfiguration.enableAutomaticUpdates must be true
enum WindowsVMGuestPatchMode implements pulumi.PulumiEnum<String> {
  manual("Manual"),
  automaticByOS("AutomaticByOS"),
  automaticByPlatform("AutomaticByPlatform");

  const WindowsVMGuestPatchMode(this.wireValue);
  @override
  final String wireValue;

  static WindowsVMGuestPatchMode fromValue(String value) {
    for (final item in WindowsVMGuestPatchMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsVMGuestPatchMode value: $value');
  }
}
