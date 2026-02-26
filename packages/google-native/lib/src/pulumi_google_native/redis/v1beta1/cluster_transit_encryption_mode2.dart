/// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
enum ClusterTransitEncryptionMode2 {
  transitEncryptionModeUnspecified("TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"),
  transitEncryptionModeDisabled("TRANSIT_ENCRYPTION_MODE_DISABLED"),
  transitEncryptionModeServerAuthentication(
      "TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION");

  const ClusterTransitEncryptionMode2(this.value);
  final String value;

  static ClusterTransitEncryptionMode2 fromValue(String value) {
    for (final item in ClusterTransitEncryptionMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterTransitEncryptionMode2 value: $value');
  }
}
