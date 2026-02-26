// ignore_for_file: unused_element, unnecessary_cast

import 'exec_step_config_response2.dart';

/// A step that runs an executable for a PatchJob.
class ExecStepResponse2 {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  final ExecStepConfigResponse2 linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  final ExecStepConfigResponse2 windowsExecStepConfig;

  ExecStepResponse2({
    required this.linuxExecStepConfig,
    required this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['linuxExecStepConfig'] = linuxExecStepConfig.toMap();
    map['windowsExecStepConfig'] = windowsExecStepConfig.toMap();
    return map;
  }

  factory ExecStepResponse2.fromMap(Map<String, dynamic> map) {
    return ExecStepResponse2(
      linuxExecStepConfig: ExecStepConfigResponse2.fromMap(
          (map['linuxExecStepConfig'] as Map).cast<String, dynamic>()),
      windowsExecStepConfig: ExecStepConfigResponse2.fromMap(
          (map['windowsExecStepConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
