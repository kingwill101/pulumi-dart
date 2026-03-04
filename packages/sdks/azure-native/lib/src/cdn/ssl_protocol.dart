/// The protocol of an established TLS connection.
enum SslProtocol {
  tLSv1("TLSv1"),
  tLSv11("TLSv1.1"),
  tLSv12("TLSv1.2");

  const SslProtocol(this.wireValue);
  final String wireValue;

  static SslProtocol fromValue(String value) {
    for (final item in SslProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslProtocol value: $value');
  }
}
