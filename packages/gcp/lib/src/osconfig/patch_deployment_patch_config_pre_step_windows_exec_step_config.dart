// ignore_for_file: unused_element, unnecessary_cast

import 'patch_deployment_patch_config_pre_step_windows_exec_step_config_gcs_object.dart';

class PatchDeploymentPatchConfigPreStepWindowsExecStepConfig {
  /// Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  final List<int>? allowedSuccessCodes;
  /// A Cloud Storage object containing the executable.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject? gcsObject;
  /// The script interpreter to use to run the script. If no interpreter is specified the script will
  /// be executed directly, which will likely only succeed for scripts with shebang lines.
  /// Possible values are: `SHELL`, `POWERSHELL`.
  final String? interpreter;
  /// An absolute path to the executable on the VM.
  final String? localPath;

  /// Creates a new [PatchDeploymentPatchConfigPreStepWindowsExecStepConfig].
  /// [allowedSuccessCodes] Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  /// [gcsObject] A Cloud Storage object containing the executable.
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script will
  /// [localPath] An absolute path to the executable on the VM.
  PatchDeploymentPatchConfigPreStepWindowsExecStepConfig({
    this.allowedSuccessCodes,
    this.gcsObject,
    this.interpreter,
    this.localPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSuccessCodes': ?allowedSuccessCodes,
      'gcsObject': ?gcsObject == null ? null : gcsObject!.toMap(),
      'interpreter': ?interpreter,
      'localPath': ?localPath,
    };
  }

  factory PatchDeploymentPatchConfigPreStepWindowsExecStepConfig.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigPreStepWindowsExecStepConfig(
      allowedSuccessCodes: map['allowedSuccessCodes'] == null ? null : (map['allowedSuccessCodes'] as List).cast<int>(),
      gcsObject: map['gcsObject'] == null ? null : PatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject.fromMap((map['gcsObject'] as Map).cast<String, dynamic>()),
      interpreter: map['interpreter'] == null ? null : map['interpreter'] as String,
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
    );
  }
}

