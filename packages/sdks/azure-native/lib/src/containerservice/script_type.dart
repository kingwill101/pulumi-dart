/// The runtime environment for the script (e.g. Bash).
enum ScriptType {
  bash("Bash"),
  powerShell("PowerShell");

  const ScriptType(this.value);
  final String value;

  static ScriptType fromValue(String value) {
    for (final item in ScriptType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptType value: $value');
  }
}

