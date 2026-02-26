/// The Gateway API release channel to use for Gateway API.
enum GatewayAPIConfigChannel2 {
  channelUnspecified("CHANNEL_UNSPECIFIED"),
  channelDisabled("CHANNEL_DISABLED"),
  channelExperimental("CHANNEL_EXPERIMENTAL"),
  channelStandard("CHANNEL_STANDARD");

  const GatewayAPIConfigChannel2(this.value);
  final String value;

  static GatewayAPIConfigChannel2 fromValue(String value) {
    for (final item in GatewayAPIConfigChannel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayAPIConfigChannel2 value: $value');
  }
}
