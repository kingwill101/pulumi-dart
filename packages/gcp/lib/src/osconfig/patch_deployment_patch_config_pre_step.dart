// ignore_for_file: unused_element, unnecessary_cast

import 'patch_deployment_patch_config_pre_step_linux_exec_step_config.dart';
import 'patch_deployment_patch_config_pre_step_windows_exec_step_config.dart';

class PatchDeploymentPatchConfigPreStep {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigPreStepLinuxExecStepConfig? linuxExecStepConfig;
  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigPreStepWindowsExecStepConfig? windowsExecStepConfig;

  /// Creates a new [PatchDeploymentPatchConfigPreStep].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  PatchDeploymentPatchConfigPreStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxExecStepConfig': ?linuxExecStepConfig == null ? null : linuxExecStepConfig!.toMap(),
      'windowsExecStepConfig': ?windowsExecStepConfig == null ? null : windowsExecStepConfig!.toMap(),
    };
  }

  factory PatchDeploymentPatchConfigPreStep.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigPreStep(
      linuxExecStepConfig: map['linuxExecStepConfig'] == null ? null : PatchDeploymentPatchConfigPreStepLinuxExecStepConfig.fromMap((map['linuxExecStepConfig'] as Map).cast<String, dynamic>()),
      windowsExecStepConfig: map['windowsExecStepConfig'] == null ? null : PatchDeploymentPatchConfigPreStepWindowsExecStepConfig.fromMap((map['windowsExecStepConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

