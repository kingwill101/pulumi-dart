enum NetworkConfigModesItem {
  addressModeUnspecified("ADDRESS_MODE_UNSPECIFIED"),
  modeIpv4("MODE_IPV4");

  const NetworkConfigModesItem(this.value);
  final String value;

  static NetworkConfigModesItem fromValue(String value) {
    for (final item in NetworkConfigModesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigModesItem value: $value');
  }
}
