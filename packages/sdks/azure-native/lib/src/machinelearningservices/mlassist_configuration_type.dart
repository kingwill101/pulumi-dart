/// [Required] Indicates whether MLAssist feature is enabled.
enum MLAssistConfigurationType {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const MLAssistConfigurationType(this.wireValue);
  final String wireValue;

  static MLAssistConfigurationType fromValue(String value) {
    for (final item in MLAssistConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MLAssistConfigurationType value: $value');
  }
}
