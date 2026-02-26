/// Required. The type of hosting used by the AppGateway.
enum AppGatewayHostType2 {
  hostTypeUnspecified("HOST_TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const AppGatewayHostType2(this.value);
  final String value;

  static AppGatewayHostType2 fromValue(String value) {
    for (final item in AppGatewayHostType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppGatewayHostType2 value: $value');
  }
}
