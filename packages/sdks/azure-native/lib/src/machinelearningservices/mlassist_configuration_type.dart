/// [Required] Indicates whether MLAssist feature is enabled.
enum MLAssistConfigurationType {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const MLAssistConfigurationType(this.value);
  final String value;

  static MLAssistConfigurationType fromValue(String value) {
    for (final item in MLAssistConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MLAssistConfigurationType value: $value');
  }
}

