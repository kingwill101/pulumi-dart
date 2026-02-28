// ignore_for_file: unused_element, unnecessary_cast

import 'exec_step_config_response.dart';

/// A step that runs an executable for a PatchJob.
class ExecStepResponse {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  final ExecStepConfigResponse linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  final ExecStepConfigResponse windowsExecStepConfig;

  /// Creates a new [ExecStepResponse].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  ExecStepResponse({
    required this.linuxExecStepConfig,
    required this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['linuxExecStepConfig'] = linuxExecStepConfig.toMap();
    map['windowsExecStepConfig'] = windowsExecStepConfig.toMap();
    return map;
  }

  factory ExecStepResponse.fromMap(Map<String, dynamic> map) {
    return ExecStepResponse(
      linuxExecStepConfig: ExecStepConfigResponse.fromMap(
          (map['linuxExecStepConfig'] as Map).cast<String, dynamic>()),
      windowsExecStepConfig: ExecStepConfigResponse.fromMap(
          (map['windowsExecStepConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
