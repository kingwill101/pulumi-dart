/// The script interpreter to use to run the script. If no interpreter is specified the script is executed directly, which likely only succeed for scripts with [shebang lines](https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
enum SoftwareRecipeStepRunScriptInterpreter {
  interpreterUnspecified("INTERPRETER_UNSPECIFIED"),
  shell("SHELL"),
  powershell("POWERSHELL");

  const SoftwareRecipeStepRunScriptInterpreter(this.value);
  final String value;

  static SoftwareRecipeStepRunScriptInterpreter fromValue(String value) {
    for (final item in SoftwareRecipeStepRunScriptInterpreter.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SoftwareRecipeStepRunScriptInterpreter value: $value',
    );
  }
}
