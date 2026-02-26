/// Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
enum EndpointNetworkType2 {
  networkTypeUnspecified("NETWORK_TYPE_UNSPECIFIED"),
  gcpNetwork("GCP_NETWORK"),
  nonGcpNetwork("NON_GCP_NETWORK");

  const EndpointNetworkType2(this.value);
  final String value;

  static EndpointNetworkType2 fromValue(String value) {
    for (final item in EndpointNetworkType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointNetworkType2 value: $value');
  }
}
