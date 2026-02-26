// ignore_for_file: unused_element, unnecessary_cast

import 'apt_settings_response2.dart';
import 'exec_step_response2.dart';
import 'windows_update_settings_response2.dart';
import 'yum_settings_response2.dart';
import 'zypper_settings_response2.dart';

/// Patch configuration specifications. Contains details on how to apply the patch(es) to a VM instance.
class PatchConfigResponse2 {
  /// Apt update settings. Use this setting to override the default `apt` patch rules.
  final AptSettingsResponse2 apt;

  /// Goo update settings. Use this setting to override the default `goo` patch rules.
  final Map<String, dynamic> goo;

  /// Allows the patch job to run on Managed instance groups (MIGs).
  final bool migInstancesAllowed;

  /// The `ExecStep` to run after the patch update.
  final ExecStepResponse2 postStep;

  /// The `ExecStep` to run before the patch update.
  final ExecStepResponse2 preStep;

  /// Post-patch reboot settings.
  final String rebootConfig;

  /// Windows update settings. Use this override the default windows patch rules.
  final WindowsUpdateSettingsResponse2 windowsUpdate;

  /// Yum update settings. Use this setting to override the default `yum` patch rules.
  final YumSettingsResponse2 yum;

  /// Zypper update settings. Use this setting to override the default `zypper` patch rules.
  final ZypperSettingsResponse2 zypper;

  PatchConfigResponse2({
    required this.apt,
    required this.goo,
    required this.migInstancesAllowed,
    required this.postStep,
    required this.preStep,
    required this.rebootConfig,
    required this.windowsUpdate,
    required this.yum,
    required this.zypper,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apt'] = apt.toMap();
    map['goo'] = goo;
    map['migInstancesAllowed'] = migInstancesAllowed;
    map['postStep'] = postStep.toMap();
    map['preStep'] = preStep.toMap();
    map['rebootConfig'] = rebootConfig;
    map['windowsUpdate'] = windowsUpdate.toMap();
    map['yum'] = yum.toMap();
    map['zypper'] = zypper.toMap();
    return map;
  }

  factory PatchConfigResponse2.fromMap(Map<String, dynamic> map) {
    return PatchConfigResponse2(
      apt: AptSettingsResponse2.fromMap(
          (map['apt'] as Map).cast<String, dynamic>()),
      goo: (map['goo'] as Map).cast<String, dynamic>(),
      migInstancesAllowed: map['migInstancesAllowed'] as bool,
      postStep: ExecStepResponse2.fromMap(
          (map['postStep'] as Map).cast<String, dynamic>()),
      preStep: ExecStepResponse2.fromMap(
          (map['preStep'] as Map).cast<String, dynamic>()),
      rebootConfig: map['rebootConfig'] as String,
      windowsUpdate: WindowsUpdateSettingsResponse2.fromMap(
          (map['windowsUpdate'] as Map).cast<String, dynamic>()),
      yum: YumSettingsResponse2.fromMap(
          (map['yum'] as Map).cast<String, dynamic>()),
      zypper: ZypperSettingsResponse2.fromMap(
          (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
