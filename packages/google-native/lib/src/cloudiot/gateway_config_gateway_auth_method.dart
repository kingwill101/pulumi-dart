/// Indicates how to authorize and/or authenticate devices to access the gateway.
enum GatewayConfigGatewayAuthMethod {
  gatewayAuthMethodUnspecified("GATEWAY_AUTH_METHOD_UNSPECIFIED"),
  associationOnly("ASSOCIATION_ONLY"),
  deviceAuthTokenOnly("DEVICE_AUTH_TOKEN_ONLY"),
  associationAndDeviceAuthToken("ASSOCIATION_AND_DEVICE_AUTH_TOKEN");

  const GatewayConfigGatewayAuthMethod(this.value);
  final String value;

  static GatewayConfigGatewayAuthMethod fromValue(String value) {
    for (final item in GatewayConfigGatewayAuthMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayConfigGatewayAuthMethod value: $value');
  }
}
