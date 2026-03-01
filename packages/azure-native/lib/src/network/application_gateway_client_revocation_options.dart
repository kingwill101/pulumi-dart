/// Verify client certificate revocation status.
enum ApplicationGatewayClientRevocationOptions {
  valueNone("None"),
  valueOCSP("OCSP");

  const ApplicationGatewayClientRevocationOptions(this.value);
  final String value;

  static ApplicationGatewayClientRevocationOptions fromValue(String value) {
    for (final item in ApplicationGatewayClientRevocationOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayClientRevocationOptions value: $value');
  }
}

