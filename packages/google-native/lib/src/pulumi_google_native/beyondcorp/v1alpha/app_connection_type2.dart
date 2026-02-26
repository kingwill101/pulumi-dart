/// Required. The type of network connectivity used by the AppConnection.
enum AppConnectionType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  tcpProxy("TCP_PROXY");

  const AppConnectionType2(this.value);
  final String value;

  static AppConnectionType2 fromValue(String value) {
    for (final item in AppConnectionType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppConnectionType2 value: $value');
  }
}
