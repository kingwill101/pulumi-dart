// ignore_for_file: unused_element, unnecessary_cast

import 'exec_step_config_interpreter.dart';
import 'gcs_object.dart';

/// Common configurations for an ExecStep.
class ExecStepConfig {
  /// Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  final List<int>? allowedSuccessCodes;

  /// A Cloud Storage object containing the executable.
  final GcsObject? gcsObject;

  /// The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  final ExecStepConfigInterpreter? interpreter;

  /// An absolute path to the executable on the VM.
  final String? localPath;

  /// Creates a new [ExecStepConfig].
  /// [allowedSuccessCodes] Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  /// [gcsObject] A Cloud Storage object containing the executable.
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// [localPath] An absolute path to the executable on the VM.
  ExecStepConfig({
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
      map['interpreter'] = interpreterValue.value;
    }
    final localPathValue = localPath;
    if (localPathValue != null) {
      map['localPath'] = localPathValue;
    }
    return map;
  }

  factory ExecStepConfig.fromMap(Map<String, dynamic> map) {
    return ExecStepConfig(
      allowedSuccessCodes: map['allowedSuccessCodes'] == null
          ? null
          : (map['allowedSuccessCodes'] as List).cast<int>(),
      gcsObject: map['gcsObject'] == null
          ? null
          : GcsObject.fromMap(
              (map['gcsObject'] as Map).cast<String, dynamic>()),
      interpreter: map['interpreter'] == null
          ? null
          : ExecStepConfigInterpreter.fromValue(map['interpreter'] as String),
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
    );
  }
}
