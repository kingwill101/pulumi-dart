// ignore_for_file: unused_element, unnecessary_cast

import 'apt_settings_response_osconfig_v1beta.dart';
import 'exec_step_response_osconfig_v1beta.dart';
import 'windows_update_settings_response_osconfig_v1beta.dart';
import 'yum_settings_response_osconfig_v1beta.dart';
import 'zypper_settings_response_osconfig_v1beta.dart';

/// Patch configuration specifications. Contains details on how to apply the patch(es) to a VM instance.
class PatchConfigResponseOsconfigV1beta {
  /// Apt update settings. Use this setting to override the default `apt` patch rules.
  final AptSettingsResponseOsconfigV1beta apt;

  /// Goo update settings. Use this setting to override the default `goo` patch rules.
  final Map<String, dynamic> goo;

  /// Allows the patch job to run on Managed instance groups (MIGs).
  final bool migInstancesAllowed;

  /// The `ExecStep` to run after the patch update.
  final ExecStepResponseOsconfigV1beta postStep;

  /// The `ExecStep` to run before the patch update.
  final ExecStepResponseOsconfigV1beta preStep;

  /// Post-patch reboot settings.
  final String rebootConfig;

  /// Windows update settings. Use this override the default windows patch rules.
  final WindowsUpdateSettingsResponseOsconfigV1beta windowsUpdate;

  /// Yum update settings. Use this setting to override the default `yum` patch rules.
  final YumSettingsResponseOsconfigV1beta yum;

  /// Zypper update settings. Use this setting to override the default `zypper` patch rules.
  final ZypperSettingsResponseOsconfigV1beta zypper;

  /// Creates a new [PatchConfigResponseOsconfigV1beta].
  /// [apt] Apt update settings. Use this setting to override the default `apt` patch rules.
  /// [goo] Goo update settings. Use this setting to override the default `goo` patch rules.
  /// [migInstancesAllowed] Allows the patch job to run on Managed instance groups (MIGs).
  /// [postStep] The `ExecStep` to run after the patch update.
  /// [preStep] The `ExecStep` to run before the patch update.
  /// [rebootConfig] Post-patch reboot settings.
  /// [windowsUpdate] Windows update settings. Use this override the default windows patch rules.
  /// [yum] Yum update settings. Use this setting to override the default `yum` patch rules.
  /// [zypper] Zypper update settings. Use this setting to override the default `zypper` patch rules.
  PatchConfigResponseOsconfigV1beta({
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

  factory PatchConfigResponseOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return PatchConfigResponseOsconfigV1beta(
      apt: AptSettingsResponseOsconfigV1beta.fromMap(
          (map['apt'] as Map).cast<String, dynamic>()),
      goo: (map['goo'] as Map).cast<String, dynamic>(),
      migInstancesAllowed: map['migInstancesAllowed'] as bool,
      postStep: ExecStepResponseOsconfigV1beta.fromMap(
          (map['postStep'] as Map).cast<String, dynamic>()),
      preStep: ExecStepResponseOsconfigV1beta.fromMap(
          (map['preStep'] as Map).cast<String, dynamic>()),
      rebootConfig: map['rebootConfig'] as String,
      windowsUpdate: WindowsUpdateSettingsResponseOsconfigV1beta.fromMap(
          (map['windowsUpdate'] as Map).cast<String, dynamic>()),
      yum: YumSettingsResponseOsconfigV1beta.fromMap(
          (map['yum'] as Map).cast<String, dynamic>()),
      zypper: ZypperSettingsResponseOsconfigV1beta.fromMap(
          (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
