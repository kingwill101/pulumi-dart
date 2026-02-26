/// Required. The type of network connectivity used by the AppGateway.
enum AppGatewayType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  tcpProxy("TCP_PROXY");

  const AppGatewayType2(this.value);
  final String value;

  static AppGatewayType2 fromValue(String value) {
    for (final item in AppGatewayType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppGatewayType2 value: $value');
  }
}
