/// Required. The type of network connectivity used by the connection.
enum ConnectionType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  tcpProxy("TCP_PROXY");

  const ConnectionType(this.value);
  final String value;

  static ConnectionType fromValue(String value) {
    for (final item in ConnectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionType value: $value');
  }
}
