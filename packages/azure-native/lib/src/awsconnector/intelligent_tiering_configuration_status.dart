/// Specifies the status of the configuration.
enum IntelligentTieringConfigurationStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const IntelligentTieringConfigurationStatus(this.value);
  final String value;

  static IntelligentTieringConfigurationStatus fromValue(String value) {
    for (final item in IntelligentTieringConfigurationStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntelligentTieringConfigurationStatus value: $value');
  }
}

