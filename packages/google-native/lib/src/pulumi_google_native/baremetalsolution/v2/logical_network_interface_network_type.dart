/// Type of network.
enum LogicalNetworkInterfaceNetworkType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  client("CLIENT"),
  private("PRIVATE");

  const LogicalNetworkInterfaceNetworkType(this.value);
  final String value;

  static LogicalNetworkInterfaceNetworkType fromValue(String value) {
    for (final item in LogicalNetworkInterfaceNetworkType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LogicalNetworkInterfaceNetworkType value: $value');
  }
}
