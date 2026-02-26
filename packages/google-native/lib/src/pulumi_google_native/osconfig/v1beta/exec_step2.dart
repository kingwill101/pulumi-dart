// ignore_for_file: unused_element, unnecessary_cast

import 'exec_step_config2.dart';

/// A step that runs an executable for a PatchJob.
class ExecStep2 {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  final ExecStepConfig2? linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  final ExecStepConfig2? windowsExecStepConfig;

  ExecStep2({
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

  factory ExecStep2.fromMap(Map<String, dynamic> map) {
    return ExecStep2(
      linuxExecStepConfig: map['linuxExecStepConfig'] == null
          ? null
          : ExecStepConfig2.fromMap(
              (map['linuxExecStepConfig'] as Map).cast<String, dynamic>()),
      windowsExecStepConfig: map['windowsExecStepConfig'] == null
          ? null
          : ExecStepConfig2.fromMap(
              (map['windowsExecStepConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
