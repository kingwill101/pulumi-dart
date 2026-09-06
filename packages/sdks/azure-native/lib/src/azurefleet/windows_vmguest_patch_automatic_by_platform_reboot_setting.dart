import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the reboot setting for all AutomaticByPlatform patch installation
/// operations.
enum WindowsVMGuestPatchAutomaticByPlatformRebootSetting implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  ifRequired("IfRequired"),
  never_("Never"),
  always("Always");

  const WindowsVMGuestPatchAutomaticByPlatformRebootSetting(this.wireValue);
  @override
  final String wireValue;

  static WindowsVMGuestPatchAutomaticByPlatformRebootSetting fromValue(String value) {
    for (final item in WindowsVMGuestPatchAutomaticByPlatformRebootSetting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsVMGuestPatchAutomaticByPlatformRebootSetting value: $value');
  }
}
