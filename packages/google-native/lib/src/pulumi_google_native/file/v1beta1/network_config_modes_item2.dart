enum NetworkConfigModesItem2 {
  addressModeUnspecified("ADDRESS_MODE_UNSPECIFIED"),
  modeIpv4("MODE_IPV4");

  const NetworkConfigModesItem2(this.value);
  final String value;

  static NetworkConfigModesItem2 fromValue(String value) {
    for (final item in NetworkConfigModesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigModesItem2 value: $value');
  }
}
