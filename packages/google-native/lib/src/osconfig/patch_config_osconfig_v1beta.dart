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

  /// Creates a new [PatchConfigOsconfigV1beta].
  /// [apt] Apt update settings. Use this setting to override the default `apt` patch rules.
  /// [goo] Goo update settings. Use this setting to override the default `goo` patch rules.
  /// [migInstancesAllowed] Allows the patch job to run on Managed instance groups (MIGs).
  /// [postStep] The `ExecStep` to run after the patch update.
  /// [preStep] The `ExecStep` to run before the patch update.
  /// [rebootConfig] Post-patch reboot settings.
  /// [windowsUpdate] Windows update settings. Use this override the default windows patch rules.
  /// [yum] Yum update settings. Use this setting to override the default `yum` patch rules.
  /// [zypper] Zypper update settings. Use this setting to override the default `zypper` patch rules.
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
    return <String, dynamic>{
      'apt': ?apt == null ? null : apt!.toMap(),
      'goo': ?goo,
      'migInstancesAllowed': ?migInstancesAllowed,
      'postStep': ?postStep == null ? null : postStep!.toMap(),
      'preStep': ?preStep == null ? null : preStep!.toMap(),
      'rebootConfig': ?rebootConfig == null ? null : rebootConfig!.value,
      'windowsUpdate': ?windowsUpdate == null ? null : windowsUpdate!.toMap(),
      'yum': ?yum == null ? null : yum!.toMap(),
      'zypper': ?zypper == null ? null : zypper!.toMap(),
    };
  }

  factory PatchConfigOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return PatchConfigOsconfigV1beta(
      apt: map['apt'] == null ? null : AptSettingsOsconfigV1beta.fromMap((map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null ? null : (map['goo'] as Map).cast<String, dynamic>(),
      migInstancesAllowed: map['migInstancesAllowed'] == null ? null : map['migInstancesAllowed'] as bool,
      postStep: map['postStep'] == null ? null : ExecStepOsconfigV1beta.fromMap((map['postStep'] as Map).cast<String, dynamic>()),
      preStep: map['preStep'] == null ? null : ExecStepOsconfigV1beta.fromMap((map['preStep'] as Map).cast<String, dynamic>()),
      rebootConfig: map['rebootConfig'] == null ? null : PatchConfigRebootConfigOsconfigV1beta.fromValue(map['rebootConfig'] as String),
      windowsUpdate: map['windowsUpdate'] == null ? null : WindowsUpdateSettingsOsconfigV1beta.fromMap((map['windowsUpdate'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null ? null : YumSettingsOsconfigV1beta.fromMap((map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null ? null : ZypperSettingsOsconfigV1beta.fromMap((map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}

