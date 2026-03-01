// ignore_for_file: unused_element, unnecessary_cast


/// Specifies additional settings to be applied when patch mode AutomaticByPlatform
/// is selected in Windows patch settings.
class WindowsVMGuestPatchAutomaticByPlatformSettingsResponse {
  /// Enables customer to schedule patching without accidental upgrades
  final bool? bypassPlatformSafetyChecksOnUserSchedule;
  /// Specifies the reboot setting for all AutomaticByPlatform patch installation
  /// operations.
  final String? rebootSetting;

  /// Creates a new [WindowsVMGuestPatchAutomaticByPlatformSettingsResponse].
  /// [bypassPlatformSafetyChecksOnUserSchedule] Enables customer to schedule patching without accidental upgrades
  /// [rebootSetting] Specifies the reboot setting for all AutomaticByPlatform patch installation
  WindowsVMGuestPatchAutomaticByPlatformSettingsResponse({
    this.bypassPlatformSafetyChecksOnUserSchedule,
    this.rebootSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassPlatformSafetyChecksOnUserSchedule': ?bypassPlatformSafetyChecksOnUserSchedule,
      'rebootSetting': ?rebootSetting,
    };
  }

  factory WindowsVMGuestPatchAutomaticByPlatformSettingsResponse.fromMap(Map<String, dynamic> map) {
    return WindowsVMGuestPatchAutomaticByPlatformSettingsResponse(
      bypassPlatformSafetyChecksOnUserSchedule: map['bypassPlatformSafetyChecksOnUserSchedule'] == null ? null : map['bypassPlatformSafetyChecksOnUserSchedule'] as bool,
      rebootSetting: map['rebootSetting'] == null ? null : map['rebootSetting'] as String,
    );
  }
}

