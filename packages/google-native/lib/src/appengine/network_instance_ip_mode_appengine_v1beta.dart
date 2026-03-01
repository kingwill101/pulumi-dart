/// The IP mode for instances. Only applicable in the App Engine flexible environment.
enum NetworkInstanceIpModeAppengineV1beta {
  instanceIpModeUnspecified("INSTANCE_IP_MODE_UNSPECIFIED"),
  external("EXTERNAL"),
  internal("INTERNAL");

  const NetworkInstanceIpModeAppengineV1beta(this.value);
  final String value;

  static NetworkInstanceIpModeAppengineV1beta fromValue(String value) {
    for (final item in NetworkInstanceIpModeAppengineV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkInstanceIpModeAppengineV1beta value: $value',
    );
  }
}
