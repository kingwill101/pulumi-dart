/// Verify client certificate revocation status.
enum ApplicationGatewayClientRevocationOptions {
  valueNone("None"),
  valueOCSP("OCSP");

  const ApplicationGatewayClientRevocationOptions(this.wireValue);
  final String wireValue;

  static ApplicationGatewayClientRevocationOptions fromValue(String value) {
    for (final item in ApplicationGatewayClientRevocationOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayClientRevocationOptions value: $value');
  }
}
