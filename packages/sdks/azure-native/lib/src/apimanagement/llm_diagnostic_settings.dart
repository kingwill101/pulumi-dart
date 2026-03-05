/// Specifies whether default diagnostic should be enabled for Large Language Models or not.
enum LlmDiagnosticSettings {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const LlmDiagnosticSettings(this.wireValue);
  final String wireValue;

  static LlmDiagnosticSettings fromValue(String value) {
    for (final item in LlmDiagnosticSettings.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LlmDiagnosticSettings value: $value');
  }
}

