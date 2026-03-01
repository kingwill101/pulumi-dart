/// Required. The type of endpoint policy. This is primarily used to validate the configuration.
enum EndpointPolicyType {
  endpointPolicyTypeUnspecified("ENDPOINT_POLICY_TYPE_UNSPECIFIED"),
  sidecarProxy("SIDECAR_PROXY"),
  grpcServer("GRPC_SERVER");

  const EndpointPolicyType(this.value);
  final String value;

  static EndpointPolicyType fromValue(String value) {
    for (final item in EndpointPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointPolicyType value: $value');
  }
}
