// ignore_for_file: unused_element, unnecessary_cast

import 'exec_step_config_osconfig_v1beta.dart';

/// A step that runs an executable for a PatchJob.
class ExecStepOsconfigV1beta {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  final ExecStepConfigOsconfigV1beta? linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  final ExecStepConfigOsconfigV1beta? windowsExecStepConfig;

  /// Creates a new [ExecStepOsconfigV1beta].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  ExecStepOsconfigV1beta({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final linuxExecStepConfigValue = linuxExecStepConfig;
    if (linuxExecStepConfigValue != null) {
      map['linuxExecStepConfig'] = linuxExecStepConfigValue.toMap();
    }
    final windowsExecStepConfigValue = windowsExecStepConfig;
    if (windowsExecStepConfigValue != null) {
      map['windowsExecStepConfig'] = windowsExecStepConfigValue.toMap();
    }
    return map;
  }

  factory ExecStepOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return ExecStepOsconfigV1beta(
      linuxExecStepConfig: map['linuxExecStepConfig'] == null
          ? null
          : ExecStepConfigOsconfigV1beta.fromMap(
              (map['linuxExecStepConfig'] as Map).cast<String, dynamic>()),
      windowsExecStepConfig: map['windowsExecStepConfig'] == null
          ? null
          : ExecStepConfigOsconfigV1beta.fromMap(
              (map['windowsExecStepConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
