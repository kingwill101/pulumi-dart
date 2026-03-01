/// Controls whether traffic from the public network is allowed to access the Attestation Provider APIs.
enum PublicNetworkAccessType {
  enabled("Enabled"),
  disabled("Disabled");

  const PublicNetworkAccessType(this.value);
  final String value;

  static PublicNetworkAccessType fromValue(String value) {
    for (final item in PublicNetworkAccessType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessType value: $value');
  }
}

