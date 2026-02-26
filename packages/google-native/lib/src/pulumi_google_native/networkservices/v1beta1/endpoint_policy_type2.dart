/// Required. The type of endpoint policy. This is primarily used to validate the configuration.
enum EndpointPolicyType2 {
  endpointPolicyTypeUnspecified("ENDPOINT_POLICY_TYPE_UNSPECIFIED"),
  sidecarProxy("SIDECAR_PROXY"),
  grpcServer("GRPC_SERVER");

  const EndpointPolicyType2(this.value);
  final String value;

  static EndpointPolicyType2 fromValue(String value) {
    for (final item in EndpointPolicyType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointPolicyType2 value: $value');
  }
}
