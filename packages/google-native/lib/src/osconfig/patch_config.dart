// ignore_for_file: unused_element, unnecessary_cast

import 'apt_settings.dart';
import 'exec_step.dart';
import 'patch_config_reboot_config.dart';
import 'windows_update_settings.dart';
import 'yum_settings.dart';
import 'zypper_settings.dart';

/// Patch configuration specifications. Contains details on how to apply the patch(es) to a VM instance.
class PatchConfig {
  /// Apt update settings. Use this setting to override the default `apt` patch rules.
  final AptSettings? apt;

  /// Goo update settings. Use this setting to override the default `goo` patch rules.
  final Map<String, dynamic>? goo;

  /// Allows the patch job to run on Managed instance groups (MIGs).
  final bool? migInstancesAllowed;

  /// The `ExecStep` to run after the patch update.
  final ExecStep? postStep;

  /// The `ExecStep` to run before the patch update.
  final ExecStep? preStep;

  /// Post-patch reboot settings.
  final PatchConfigRebootConfig? rebootConfig;

  /// Windows update settings. Use this override the default windows patch rules.
  final WindowsUpdateSettings? windowsUpdate;

  /// Yum update settings. Use this setting to override the default `yum` patch rules.
  final YumSettings? yum;

  /// Zypper update settings. Use this setting to override the default `zypper` patch rules.
  final ZypperSettings? zypper;

  /// Creates a new [PatchConfig].
  /// [apt] Apt update settings. Use this setting to override the default `apt` patch rules.
  /// [goo] Goo update settings. Use this setting to override the default `goo` patch rules.
  /// [migInstancesAllowed] Allows the patch job to run on Managed instance groups (MIGs).
  /// [postStep] The `ExecStep` to run after the patch update.
  /// [preStep] The `ExecStep` to run before the patch update.
  /// [rebootConfig] Post-patch reboot settings.
  /// [windowsUpdate] Windows update settings. Use this override the default windows patch rules.
  /// [yum] Yum update settings. Use this setting to override the default `yum` patch rules.
  /// [zypper] Zypper update settings. Use this setting to override the default `zypper` patch rules.
  PatchConfig({
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

  factory PatchConfig.fromMap(Map<String, dynamic> map) {
    return PatchConfig(
      apt: map['apt'] == null
          ? null
          : AptSettings.fromMap((map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null
          ? null
          : (map['goo'] as Map).cast<String, dynamic>(),
      migInstancesAllowed: map['migInstancesAllowed'] == null
          ? null
          : map['migInstancesAllowed'] as bool,
      postStep: map['postStep'] == null
          ? null
          : ExecStep.fromMap((map['postStep'] as Map).cast<String, dynamic>()),
      preStep: map['preStep'] == null
          ? null
          : ExecStep.fromMap((map['preStep'] as Map).cast<String, dynamic>()),
      rebootConfig: map['rebootConfig'] == null
          ? null
          : PatchConfigRebootConfig.fromValue(map['rebootConfig'] as String),
      windowsUpdate: map['windowsUpdate'] == null
          ? null
          : WindowsUpdateSettings.fromMap(
              (map['windowsUpdate'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : YumSettings.fromMap((map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : ZypperSettings.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
