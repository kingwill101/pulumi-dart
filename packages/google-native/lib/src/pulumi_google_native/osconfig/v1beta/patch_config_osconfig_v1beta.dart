// ignore_for_file: unused_element, unnecessary_cast

import 'apt_settings_osconfig_v1beta.dart';
import 'exec_step_osconfig_v1beta.dart';
import 'patch_config_reboot_config_osconfig_v1beta.dart';
import 'windows_update_settings_osconfig_v1beta.dart';
import 'yum_settings_osconfig_v1beta.dart';
import 'zypper_settings_osconfig_v1beta.dart';

/// Patch configuration specifications. Contains details on how to apply the patch(es) to a VM instance.
class PatchConfigOsconfigV1beta {
  /// Apt update settings. Use this setting to override the default `apt` patch rules.
  final AptSettingsOsconfigV1beta? apt;

  /// Goo update settings. Use this setting to override the default `goo` patch rules.
  final Map<String, dynamic>? goo;

  /// Allows the patch job to run on Managed instance groups (MIGs).
  final bool? migInstancesAllowed;

  /// The `ExecStep` to run after the patch update.
  final ExecStepOsconfigV1beta? postStep;

  /// The `ExecStep` to run before the patch update.
  final ExecStepOsconfigV1beta? preStep;

  /// Post-patch reboot settings.
  final PatchConfigRebootConfigOsconfigV1beta? rebootConfig;

  /// Windows update settings. Use this override the default windows patch rules.
  final WindowsUpdateSettingsOsconfigV1beta? windowsUpdate;

  /// Yum update settings. Use this setting to override the default `yum` patch rules.
  final YumSettingsOsconfigV1beta? yum;

  /// Zypper update settings. Use this setting to override the default `zypper` patch rules.
  final ZypperSettingsOsconfigV1beta? zypper;

  PatchConfigOsconfigV1beta({
    this.apt,
    this.goo,
    this.migInstancesAllowed,
    this.postStep,
    this.preStep,
    this.rebootConfig,
    this.windowsUpdate,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aptValue = apt;
    if (aptValue != null) {
      map['apt'] = aptValue.toMap();
    }
    final gooValue = goo;
    if (gooValue != null) {
      map['goo'] = gooValue;
    }
    final migInstancesAllowedValue = migInstancesAllowed;
    if (migInstancesAllowedValue != null) {
      map['migInstancesAllowed'] = migInstancesAllowedValue;
    }
    final postStepValue = postStep;
    if (postStepValue != null) {
      map['postStep'] = postStepValue.toMap();
    }
    final preStepValue = preStep;
    if (preStepValue != null) {
      map['preStep'] = preStepValue.toMap();
    }
    final rebootConfigValue = rebootConfig;
    if (rebootConfigValue != null) {
      map['rebootConfig'] = rebootConfigValue.value;
    }
    final windowsUpdateValue = windowsUpdate;
    if (windowsUpdateValue != null) {
      map['windowsUpdate'] = windowsUpdateValue.toMap();
    }
    final yumValue = yum;
    if (yumValue != null) {
      map['yum'] = yumValue.toMap();
    }
    final zypperValue = zypper;
    if (zypperValue != null) {
      map['zypper'] = zypperValue.toMap();
    }
    return map;
  }

  factory PatchConfigOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return PatchConfigOsconfigV1beta(
      apt: map['apt'] == null
          ? null
          : AptSettingsOsconfigV1beta.fromMap(
              (map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null
          ? null
          : (map['goo'] as Map).cast<String, dynamic>(),
      migInstancesAllowed: map['migInstancesAllowed'] == null
          ? null
          : map['migInstancesAllowed'] as bool,
      postStep: map['postStep'] == null
          ? null
          : ExecStepOsconfigV1beta.fromMap(
              (map['postStep'] as Map).cast<String, dynamic>()),
      preStep: map['preStep'] == null
          ? null
          : ExecStepOsconfigV1beta.fromMap(
              (map['preStep'] as Map).cast<String, dynamic>()),
      rebootConfig: map['rebootConfig'] == null
          ? null
          : PatchConfigRebootConfigOsconfigV1beta.fromValue(
              map['rebootConfig'] as String),
      windowsUpdate: map['windowsUpdate'] == null
          ? null
          : WindowsUpdateSettingsOsconfigV1beta.fromMap(
              (map['windowsUpdate'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : YumSettingsOsconfigV1beta.fromMap(
              (map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : ZypperSettingsOsconfigV1beta.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
