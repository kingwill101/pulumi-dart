/// Specifies whether default diagnostic should be enabled for Large Language Models or not.
enum LlmDiagnosticSettings {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const LlmDiagnosticSettings(this.value);
  final String value;

  static LlmDiagnosticSettings fromValue(String value) {
    for (final item in LlmDiagnosticSettings.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LlmDiagnosticSettings value: $value');
  }
}

