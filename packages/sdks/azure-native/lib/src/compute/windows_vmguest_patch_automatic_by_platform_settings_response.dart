// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies additional settings to be applied when patch mode AutomaticByPlatform is selected in Windows patch settings.
class WindowsVMGuestPatchAutomaticByPlatformSettingsResponse {
  /// Enables customer to schedule patching without accidental upgrades
  final pulumi.Input<bool>? bypassPlatformSafetyChecksOnUserSchedule;
  /// Specifies the reboot setting for all AutomaticByPlatform patch installation operations.
  final pulumi.Input<String>? rebootSetting;

  /// Creates a new [WindowsVMGuestPatchAutomaticByPlatformSettingsResponse].
  /// [bypassPlatformSafetyChecksOnUserSchedule] Enables customer to schedule patching without accidental upgrades
  /// [rebootSetting] Specifies the reboot setting for all AutomaticByPlatform patch installation operations.
  const WindowsVMGuestPatchAutomaticByPlatformSettingsResponse({
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
      bypassPlatformSafetyChecksOnUserSchedule: (() { final guardedValue = map['bypassPlatformSafetyChecksOnUserSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rebootSetting: (() { final guardedValue = map['rebootSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

