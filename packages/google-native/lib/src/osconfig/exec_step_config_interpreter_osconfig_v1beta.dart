/// The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
enum ExecStepConfigInterpreterOsconfigV1beta {
  interpreterUnspecified("INTERPRETER_UNSPECIFIED"),
  none("NONE"),
  shell("SHELL"),
  powershell("POWERSHELL");

  const ExecStepConfigInterpreterOsconfigV1beta(this.value);
  final String value;

  static ExecStepConfigInterpreterOsconfigV1beta fromValue(String value) {
    for (final item in ExecStepConfigInterpreterOsconfigV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ExecStepConfigInterpreterOsconfigV1beta value: $value',
    );
  }
}
