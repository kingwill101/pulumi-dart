// ignore_for_file: unused_element, unnecessary_cast


/// Specifies additional settings to be applied when patch mode AutomaticByPlatform
/// is selected in Windows patch settings.
class WindowsVMGuestPatchAutomaticByPlatformSettings {
  /// Enables customer to schedule patching without accidental upgrades
  final bool? bypassPlatformSafetyChecksOnUserSchedule;
  /// Specifies the reboot setting for all AutomaticByPlatform patch installation
  /// operations.
  final String? rebootSetting;

  /// Creates a new [WindowsVMGuestPatchAutomaticByPlatformSettings].
  /// [bypassPlatformSafetyChecksOnUserSchedule] Enables customer to schedule patching without accidental upgrades
  /// [rebootSetting] Specifies the reboot setting for all AutomaticByPlatform patch installation
  WindowsVMGuestPatchAutomaticByPlatformSettings({
    this.bypassPlatformSafetyChecksOnUserSchedule,
    this.rebootSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassPlatformSafetyChecksOnUserSchedule': ?bypassPlatformSafetyChecksOnUserSchedule,
      'rebootSetting': ?rebootSetting,
    };
  }

  factory WindowsVMGuestPatchAutomaticByPlatformSettings.fromMap(Map<String, dynamic> map) {
    return WindowsVMGuestPatchAutomaticByPlatformSettings(
      bypassPlatformSafetyChecksOnUserSchedule: map['bypassPlatformSafetyChecksOnUserSchedule'] == null ? null : map['bypassPlatformSafetyChecksOnUserSchedule'] as bool,
      rebootSetting: map['rebootSetting'] == null ? null : map['rebootSetting'] as String,
    );
  }
}

