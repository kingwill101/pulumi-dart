// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_vmguest_patch_automatic_by_platform_settings_response.dart';

/// Specifies settings related to VM Guest Patching on Linux.
class LinuxPatchSettingsResponse {
  /// Specifies the mode of VM Guest Patch Assessment for the IaaS virtual
  /// machine.<br /><br /> Possible values are:<br /><br /> **ImageDefault** - You
  /// control the timing of patch assessments on a virtual machine. <br /><br />
  /// **AutomaticByPlatform** - The platform will trigger periodic patch assessments.
  /// The property provisionVMAgent must be true.
  final pulumi.Input<String>? assessmentMode;
  /// Specifies additional settings for patch mode AutomaticByPlatform in VM Guest
  /// Patching on Linux.
  final pulumi.Input<LinuxVMGuestPatchAutomaticByPlatformSettingsResponse>? automaticByPlatformSettings;
  /// Specifies the mode of VM Guest Patching to IaaS virtual machine or virtual
  /// machines associated to virtual machine scale set with OrchestrationMode as
  /// Flexible.<br /><br /> Possible values are:<br /><br /> **ImageDefault** - The
  /// virtual machine's default patching configuration is used. <br /><br />
  /// **AutomaticByPlatform** - The virtual machine will be automatically updated by
  /// the platform. The property provisionVMAgent must be true
  final pulumi.Input<String>? patchMode;

  /// Creates a new [LinuxPatchSettingsResponse].
  /// [assessmentMode] Specifies the mode of VM Guest Patch Assessment for the IaaS virtual
  /// [automaticByPlatformSettings] Specifies additional settings for patch mode AutomaticByPlatform in VM Guest
  /// [patchMode] Specifies the mode of VM Guest Patching to IaaS virtual machine or virtual
  LinuxPatchSettingsResponse({
    this.assessmentMode,
    this.automaticByPlatformSettings,
    this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': ?assessmentMode,
      'automaticByPlatformSettings': ?pulumi.Input.mapOptionalInputValue<LinuxVMGuestPatchAutomaticByPlatformSettingsResponse, Map<String, dynamic>>(automaticByPlatformSettings, (value) => value.toMap()),
      'patchMode': ?patchMode,
    };
  }

  factory LinuxPatchSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LinuxPatchSettingsResponse(
      assessmentMode: map['assessmentMode'] == null ? null : (map['assessmentMode'] as String).input(),
      automaticByPlatformSettings: map['automaticByPlatformSettings'] == null ? null : (LinuxVMGuestPatchAutomaticByPlatformSettingsResponse.fromMap((map['automaticByPlatformSettings'] as Map).cast<String, dynamic>())).input(),
      patchMode: map['patchMode'] == null ? null : (map['patchMode'] as String).input(),
    );
  }
}

