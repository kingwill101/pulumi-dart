// ignore_for_file: unused_element, unnecessary_cast

/// Runs a script through an interpreter.
class SoftwareRecipeStepRunScriptResponse {
  /// Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  final List<int> allowedExitCodes;

  /// The script interpreter to use to run the script. If no interpreter is specified the script is executed directly, which likely only succeed for scripts with [shebang lines](https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  final String interpreter;

  /// The shell script to be executed.
  final String script;

  /// Creates a new [SoftwareRecipeStepRunScriptResponse].
  /// [allowedExitCodes] Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script is executed directly, which likely only succeed for scripts with [shebang lines](https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// [script] The shell script to be executed.
  SoftwareRecipeStepRunScriptResponse({
    required this.allowedExitCodes,
    required this.interpreter,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedExitCodes'] = allowedExitCodes;
    map['interpreter'] = interpreter;
    map['script'] = script;
    return map;
  }

  factory SoftwareRecipeStepRunScriptResponse.fromMap(
      Map<String, dynamic> map) {
    return SoftwareRecipeStepRunScriptResponse(
      allowedExitCodes: (map['allowedExitCodes'] as List).cast<int>(),
      interpreter: map['interpreter'] as String,
      script: map['script'] as String,
    );
  }
}
