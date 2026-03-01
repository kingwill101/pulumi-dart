// ignore_for_file: unused_element, unnecessary_cast

import 'apt_settings_response.dart';
import 'exec_step_response.dart';
import 'windows_update_settings_response.dart';
import 'yum_settings_response.dart';
import 'zypper_settings_response.dart';

/// Patch configuration specifications. Contains details on how to apply the patch(es) to a VM instance.
class PatchConfigResponse {
  /// Apt update settings. Use this setting to override the default `apt` patch rules.
  final AptSettingsResponse apt;

  /// Goo update settings. Use this setting to override the default `goo` patch rules.
  final Map<String, dynamic> goo;

  /// Allows the patch job to run on Managed instance groups (MIGs).
  final bool migInstancesAllowed;

  /// The `ExecStep` to run after the patch update.
  final ExecStepResponse postStep;

  /// The `ExecStep` to run before the patch update.
  final ExecStepResponse preStep;

  /// Post-patch reboot settings.
  final String rebootConfig;

  /// Windows update settings. Use this override the default windows patch rules.
  final WindowsUpdateSettingsResponse windowsUpdate;

  /// Yum update settings. Use this setting to override the default `yum` patch rules.
  final YumSettingsResponse yum;

  /// Zypper update settings. Use this setting to override the default `zypper` patch rules.
  final ZypperSettingsResponse zypper;

  /// Creates a new [PatchConfigResponse].
  /// [apt] Apt update settings. Use this setting to override the default `apt` patch rules.
  /// [goo] Goo update settings. Use this setting to override the default `goo` patch rules.
  /// [migInstancesAllowed] Allows the patch job to run on Managed instance groups (MIGs).
  /// [postStep] The `ExecStep` to run after the patch update.
  /// [preStep] The `ExecStep` to run before the patch update.
  /// [rebootConfig] Post-patch reboot settings.
  /// [windowsUpdate] Windows update settings. Use this override the default windows patch rules.
  /// [yum] Yum update settings. Use this setting to override the default `yum` patch rules.
  /// [zypper] Zypper update settings. Use this setting to override the default `zypper` patch rules.
  PatchConfigResponse({
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
    return <String, dynamic>{
      'apt': apt.toMap(),
      'goo': goo,
      'migInstancesAllowed': migInstancesAllowed,
      'postStep': postStep.toMap(),
      'preStep': preStep.toMap(),
      'rebootConfig': rebootConfig,
      'windowsUpdate': windowsUpdate.toMap(),
      'yum': yum.toMap(),
      'zypper': zypper.toMap(),
    };
  }

  factory PatchConfigResponse.fromMap(Map<String, dynamic> map) {
    return PatchConfigResponse(
      apt: AptSettingsResponse.fromMap(
        (map['apt'] as Map).cast<String, dynamic>(),
      ),
      goo: (map['goo'] as Map).cast<String, dynamic>(),
      migInstancesAllowed: map['migInstancesAllowed'] as bool,
      postStep: ExecStepResponse.fromMap(
        (map['postStep'] as Map).cast<String, dynamic>(),
      ),
      preStep: ExecStepResponse.fromMap(
        (map['preStep'] as Map).cast<String, dynamic>(),
      ),
      rebootConfig: map['rebootConfig'] as String,
      windowsUpdate: WindowsUpdateSettingsResponse.fromMap(
        (map['windowsUpdate'] as Map).cast<String, dynamic>(),
      ),
      yum: YumSettingsResponse.fromMap(
        (map['yum'] as Map).cast<String, dynamic>(),
      ),
      zypper: ZypperSettingsResponse.fromMap(
        (map['zypper'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
