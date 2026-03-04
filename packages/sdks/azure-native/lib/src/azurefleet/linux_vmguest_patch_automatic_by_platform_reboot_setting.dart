/// Specifies the reboot setting for all AutomaticByPlatform patch installation
/// operations.
enum LinuxVMGuestPatchAutomaticByPlatformRebootSetting {
  unknown("Unknown"),
  ifRequired("IfRequired"),
  never_("Never"),
  always("Always");

  const LinuxVMGuestPatchAutomaticByPlatformRebootSetting(this.wireValue);
  final String wireValue;

  static LinuxVMGuestPatchAutomaticByPlatformRebootSetting fromValue(
    String value,
  ) {
    for (final item
        in LinuxVMGuestPatchAutomaticByPlatformRebootSetting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown LinuxVMGuestPatchAutomaticByPlatformRebootSetting value: $value',
    );
  }
}
