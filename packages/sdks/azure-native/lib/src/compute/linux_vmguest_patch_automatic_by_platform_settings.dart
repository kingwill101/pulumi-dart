// ignore_for_file: unused_element, unnecessary_cast


/// Specifies additional settings to be applied when patch mode AutomaticByPlatform is selected in Linux patch settings.
class LinuxVMGuestPatchAutomaticByPlatformSettings {
  /// Enables customer to schedule patching without accidental upgrades
  final bool? bypassPlatformSafetyChecksOnUserSchedule;
  /// Specifies the reboot setting for all AutomaticByPlatform patch installation operations.
  final String? rebootSetting;

  /// Creates a new [LinuxVMGuestPatchAutomaticByPlatformSettings].
  /// [bypassPlatformSafetyChecksOnUserSchedule] Enables customer to schedule patching without accidental upgrades
  /// [rebootSetting] Specifies the reboot setting for all AutomaticByPlatform patch installation operations.
  LinuxVMGuestPatchAutomaticByPlatformSettings({
    this.bypassPlatformSafetyChecksOnUserSchedule,
    this.rebootSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassPlatformSafetyChecksOnUserSchedule': ?bypassPlatformSafetyChecksOnUserSchedule,
      'rebootSetting': ?rebootSetting,
    };
  }

  factory LinuxVMGuestPatchAutomaticByPlatformSettings.fromMap(Map<String, dynamic> map) {
    return LinuxVMGuestPatchAutomaticByPlatformSettings(
      bypassPlatformSafetyChecksOnUserSchedule: map['bypassPlatformSafetyChecksOnUserSchedule'] == null ? null : map['bypassPlatformSafetyChecksOnUserSchedule'] as bool,
      rebootSetting: map['rebootSetting'] == null ? null : map['rebootSetting'] as String,
    );
  }
}

