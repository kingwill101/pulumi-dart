/// Defines the customer's intent for updating confidential VM properties
enum ConfidentialVmIntent {
  enable("Enable"),
  disable("Disable");

  const ConfidentialVmIntent(this.wireValue);
  final String wireValue;

  static ConfidentialVmIntent fromValue(String value) {
    for (final item in ConfidentialVmIntent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfidentialVmIntent value: $value');
  }
}
