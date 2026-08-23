/// Whether to enable certificate verification or not
enum GatewayCertificateVerification {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const GatewayCertificateVerification(this.wireValue);
  final String wireValue;

  static GatewayCertificateVerification fromValue(String value) {
    for (final item in GatewayCertificateVerification.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayCertificateVerification value: $value');
  }
}
