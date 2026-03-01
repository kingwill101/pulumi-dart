/// Minimum version of Ssl protocol to be supported on application gateway.
enum ApplicationGatewaySslProtocol {
  valueTLSv10("TLSv1_0"),
  valueTLSv11("TLSv1_1"),
  valueTLSv12("TLSv1_2"),
  valueTLSv13("TLSv1_3");

  const ApplicationGatewaySslProtocol(this.value);
  final String value;

  static ApplicationGatewaySslProtocol fromValue(String value) {
    for (final item in ApplicationGatewaySslProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewaySslProtocol value: $value');
  }
}

