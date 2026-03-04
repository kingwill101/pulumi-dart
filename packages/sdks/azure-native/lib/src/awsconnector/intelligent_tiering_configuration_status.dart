/// Specifies the status of the configuration.
enum IntelligentTieringConfigurationStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const IntelligentTieringConfigurationStatus(this.wireValue);
  final String wireValue;

  static IntelligentTieringConfigurationStatus fromValue(String value) {
    for (final item in IntelligentTieringConfigurationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown IntelligentTieringConfigurationStatus value: $value',
    );
  }
}
