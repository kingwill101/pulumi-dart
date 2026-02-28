/// Specifies the network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
enum S3CompatibleMetadataProtocol {
  networkProtocolUnspecified("NETWORK_PROTOCOL_UNSPECIFIED"),
  networkProtocolHttps("NETWORK_PROTOCOL_HTTPS"),
  networkProtocolHttp("NETWORK_PROTOCOL_HTTP");

  const S3CompatibleMetadataProtocol(this.value);
  final String value;

  static S3CompatibleMetadataProtocol fromValue(String value) {
    for (final item in S3CompatibleMetadataProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown S3CompatibleMetadataProtocol value: $value');
  }
}
