// ignore_for_file: unused_element, unnecessary_cast

import 'software_recipe_step_run_script_interpreter.dart';

/// Runs a script through an interpreter.
class SoftwareRecipeStepRunScript {
  /// Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  final List<int>? allowedExitCodes;

  /// The script interpreter to use to run the script. If no interpreter is specified the script is executed directly, which likely only succeed for scripts with [shebang lines](https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  final SoftwareRecipeStepRunScriptInterpreter? interpreter;

  /// The shell script to be executed.
  final String script;

  SoftwareRecipeStepRunScript({
    this.allowedExitCodes,
    this.interpreter,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedExitCodesValue = allowedExitCodes;
    if (allowedExitCodesValue != null) {
      map['allowedExitCodes'] = allowedExitCodesValue;
    }
    final interpreterValue = interpreter;
    if (interpreterValue != null) {
      map['interpreter'] = interpreterValue.value;
    }
    map['script'] = script;
    return map;
  }

  factory SoftwareRecipeStepRunScript.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepRunScript(
      allowedExitCodes: map['allowedExitCodes'] == null
          ? null
          : (map['allowedExitCodes'] as List).cast<int>(),
      interpreter: map['interpreter'] == null
          ? null
          : SoftwareRecipeStepRunScriptInterpreter.fromValue(
              map['interpreter'] as String),
      script: map['script'] as String,
    );
  }
}
