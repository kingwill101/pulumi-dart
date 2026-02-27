// ignore_for_file: unused_element, unnecessary_cast

import 'exec_step_config_response_osconfig_v1beta.dart';

/// A step that runs an executable for a PatchJob.
class ExecStepResponseOsconfigV1beta {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  final ExecStepConfigResponseOsconfigV1beta linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  final ExecStepConfigResponseOsconfigV1beta windowsExecStepConfig;

  ExecStepResponseOsconfigV1beta({
    required this.linuxExecStepConfig,
    required this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['linuxExecStepConfig'] = linuxExecStepConfig.toMap();
    map['windowsExecStepConfig'] = windowsExecStepConfig.toMap();
    return map;
  }

  factory ExecStepResponseOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return ExecStepResponseOsconfigV1beta(
      linuxExecStepConfig: ExecStepConfigResponseOsconfigV1beta.fromMap(
          (map['linuxExecStepConfig'] as Map).cast<String, dynamic>()),
      windowsExecStepConfig: ExecStepConfigResponseOsconfigV1beta.fromMap(
          (map['windowsExecStepConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
