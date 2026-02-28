/// Required. The type of hosting used by the AppGateway.
enum AppGatewayHostType {
  hostTypeUnspecified("HOST_TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const AppGatewayHostType(this.value);
  final String value;

  static AppGatewayHostType fromValue(String value) {
    for (final item in AppGatewayHostType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppGatewayHostType value: $value');
  }
}

