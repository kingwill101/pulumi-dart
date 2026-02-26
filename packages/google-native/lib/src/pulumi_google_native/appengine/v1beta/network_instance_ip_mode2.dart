/// The IP mode for instances. Only applicable in the App Engine flexible environment.
enum NetworkInstanceIpMode2 {
  instanceIpModeUnspecified("INSTANCE_IP_MODE_UNSPECIFIED"),
  external("EXTERNAL"),
  internal("INTERNAL");

  const NetworkInstanceIpMode2(this.value);
  final String value;

  static NetworkInstanceIpMode2 fromValue(String value) {
    for (final item in NetworkInstanceIpMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInstanceIpMode2 value: $value');
  }
}
