// ignore_for_file: unused_element, unnecessary_cast

import '../patch_deployment_patch_config_post_step_linux_exec_step_config_gcs_object/patch_deployment_patch_config_post_step_linux_exec_step_config_gcs_object.dart';

class PatchDeploymentPatchConfigPostStepLinuxExecStepConfig {
  /// Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  final List<int>? allowedSuccessCodes;

  /// A Cloud Storage object containing the executable.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigPostStepLinuxExecStepConfigGcsObject?
      gcsObject;

  /// The script interpreter to use to run the script. If no interpreter is specified the script will
  /// be executed directly, which will likely only succeed for scripts with shebang lines.
  /// Possible values are: `SHELL`, `POWERSHELL`.
  final String? interpreter;

  /// An absolute path to the executable on the VM.
  final String? localPath;

  PatchDeploymentPatchConfigPostStepLinuxExecStepConfig({
    this.allowedSuccessCodes,
    this.gcsObject,
    this.interpreter,
    this.localPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedSuccessCodesValue = allowedSuccessCodes;
    if (allowedSuccessCodesValue != null) {
      map['allowedSuccessCodes'] = allowedSuccessCodesValue;
    }
    final gcsObjectValue = gcsObject;
    if (gcsObjectValue != null) {
      map['gcsObject'] = gcsObjectValue.toMap();
    }
    final interpreterValue = interpreter;
    if (interpreterValue != null) {
      map['interpreter'] = interpreterValue;
    }
    final localPathValue = localPath;
    if (localPathValue != null) {
      map['localPath'] = localPathValue;
    }
    return map;
  }

  factory PatchDeploymentPatchConfigPostStepLinuxExecStepConfig.fromMap(
      Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigPostStepLinuxExecStepConfig(
      allowedSuccessCodes: map['allowedSuccessCodes'] == null
          ? null
          : (map['allowedSuccessCodes'] as List).cast<int>(),
      gcsObject: map['gcsObject'] == null
          ? null
          : PatchDeploymentPatchConfigPostStepLinuxExecStepConfigGcsObject
              .fromMap((map['gcsObject'] as Map).cast<String, dynamic>()),
      interpreter:
          map['interpreter'] == null ? null : map['interpreter'] as String,
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
    );
  }
}
