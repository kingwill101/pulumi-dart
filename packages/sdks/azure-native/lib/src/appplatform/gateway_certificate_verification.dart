/// Whether to enable certificate verification or not
enum GatewayCertificateVerification {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const GatewayCertificateVerification(this.value);
  final String value;

  static GatewayCertificateVerification fromValue(String value) {
    for (final item in GatewayCertificateVerification.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayCertificateVerification value: $value');
  }
}

