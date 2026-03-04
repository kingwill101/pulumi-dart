/// Custom authentication configuration.
enum BrokerAuthenticationMethod {
  custom("Custom"),
  serviceAccountToken("ServiceAccountToken"),
  x509("X509");

  const BrokerAuthenticationMethod(this.wireValue);
  final String wireValue;

  static BrokerAuthenticationMethod fromValue(String value) {
    for (final item in BrokerAuthenticationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BrokerAuthenticationMethod value: $value');
  }
}
