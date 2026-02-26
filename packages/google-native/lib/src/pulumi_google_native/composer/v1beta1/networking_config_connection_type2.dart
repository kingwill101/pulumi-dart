/// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
enum NetworkingConfigConnectionType2 {
  connectionTypeUnspecified("CONNECTION_TYPE_UNSPECIFIED"),
  vpcPeering("VPC_PEERING"),
  privateServiceConnect("PRIVATE_SERVICE_CONNECT");

  const NetworkingConfigConnectionType2(this.value);
  final String value;

  static NetworkingConfigConnectionType2 fromValue(String value) {
    for (final item in NetworkingConfigConnectionType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkingConfigConnectionType2 value: $value');
  }
}
