// ignore_for_file: unused_element, unnecessary_cast

import 'patch_deployment_patch_config_post_step_linux_exec_step_config.dart';
import 'patch_deployment_patch_config_post_step_windows_exec_step_config.dart';

class PatchDeploymentPatchConfigPostStep {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigPostStepLinuxExecStepConfig?
  linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigPostStepWindowsExecStepConfig?
  windowsExecStepConfig;

  /// Creates a new [PatchDeploymentPatchConfigPostStep].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  PatchDeploymentPatchConfigPostStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxExecStepConfig': ?linuxExecStepConfig == null
          ? null
          : linuxExecStepConfig!.toMap(),
      'windowsExecStepConfig': ?windowsExecStepConfig == null
          ? null
          : windowsExecStepConfig!.toMap(),
    };
  }

  factory PatchDeploymentPatchConfigPostStep.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigPostStep(
      linuxExecStepConfig: map['linuxExecStepConfig'] == null
          ? null
          : PatchDeploymentPatchConfigPostStepLinuxExecStepConfig.fromMap(
              (map['linuxExecStepConfig'] as Map).cast<String, dynamic>(),
            ),
      windowsExecStepConfig: map['windowsExecStepConfig'] == null
          ? null
          : PatchDeploymentPatchConfigPostStepWindowsExecStepConfig.fromMap(
              (map['windowsExecStepConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
