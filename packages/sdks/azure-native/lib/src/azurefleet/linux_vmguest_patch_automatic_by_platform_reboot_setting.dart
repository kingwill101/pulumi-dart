/// Specifies the reboot setting for all AutomaticByPlatform patch installation
/// operations.
enum LinuxVMGuestPatchAutomaticByPlatformRebootSetting {
  unknown("Unknown"),
  ifRequired("IfRequired"),
  never("Never"),
  always("Always");

  const LinuxVMGuestPatchAutomaticByPlatformRebootSetting(this.value);
  final String value;

  static LinuxVMGuestPatchAutomaticByPlatformRebootSetting fromValue(String value) {
    for (final item in LinuxVMGuestPatchAutomaticByPlatformRebootSetting.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxVMGuestPatchAutomaticByPlatformRebootSetting value: $value');
  }
}

