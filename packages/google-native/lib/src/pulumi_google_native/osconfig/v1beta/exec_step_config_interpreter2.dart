/// The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
enum ExecStepConfigInterpreter2 {
  interpreterUnspecified("INTERPRETER_UNSPECIFIED"),
  none("NONE"),
  shell("SHELL"),
  powershell("POWERSHELL");

  const ExecStepConfigInterpreter2(this.value);
  final String value;

  static ExecStepConfigInterpreter2 fromValue(String value) {
    for (final item in ExecStepConfigInterpreter2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecStepConfigInterpreter2 value: $value');
  }
}
