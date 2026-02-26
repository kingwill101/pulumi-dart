/// Required. The script interpreter to use.
enum OSPolicyResourceExecResourceExecInterpreter2 {
  interpreterUnspecified("INTERPRETER_UNSPECIFIED"),
  none("NONE"),
  shell("SHELL"),
  powershell("POWERSHELL");

  const OSPolicyResourceExecResourceExecInterpreter2(this.value);
  final String value;

  static OSPolicyResourceExecResourceExecInterpreter2 fromValue(String value) {
    for (final item in OSPolicyResourceExecResourceExecInterpreter2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown OSPolicyResourceExecResourceExecInterpreter2 value: $value');
  }
}
