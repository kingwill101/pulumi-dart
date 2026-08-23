/// Double encryption status as entered by the customer. It is compulsory to give this parameter if the 'Deny' or 'Disabled' policy is configured.
enum DoubleEncryptionStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const DoubleEncryptionStatus(this.wireValue);
  final String wireValue;

  static DoubleEncryptionStatus fromValue(String value) {
    for (final item in DoubleEncryptionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DoubleEncryptionStatus value: $value');
  }
}
