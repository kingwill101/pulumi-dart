/// Specifies the reboot setting for all AutomaticByPlatform patch installation operations.
enum WindowsVMGuestPatchAutomaticByPlatformRebootSetting {
  unknown("Unknown"),
  ifRequired("IfRequired"),
  never("Never"),
  always("Always");

  const WindowsVMGuestPatchAutomaticByPlatformRebootSetting(this.value);
  final String value;

  static WindowsVMGuestPatchAutomaticByPlatformRebootSetting fromValue(String value) {
    for (final item in WindowsVMGuestPatchAutomaticByPlatformRebootSetting.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsVMGuestPatchAutomaticByPlatformRebootSetting value: $value');
  }
}

