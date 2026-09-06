import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the reboot setting for all AutomaticByPlatform patch installation operations.
enum LinuxVMGuestPatchAutomaticByPlatformRebootSetting implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  ifRequired("IfRequired"),
  never_("Never"),
  always("Always");

  const LinuxVMGuestPatchAutomaticByPlatformRebootSetting(this.wireValue);
  @override
  final String wireValue;

  static LinuxVMGuestPatchAutomaticByPlatformRebootSetting fromValue(String value) {
    for (final item in LinuxVMGuestPatchAutomaticByPlatformRebootSetting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxVMGuestPatchAutomaticByPlatformRebootSetting value: $value');
  }
}
