/// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
enum ClusterTransitEncryptionMode {
  transitEncryptionModeUnspecified("TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"),
  transitEncryptionModeDisabled("TRANSIT_ENCRYPTION_MODE_DISABLED"),
  transitEncryptionModeServerAuthentication(
      "TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION");

  const ClusterTransitEncryptionMode(this.value);
  final String value;

  static ClusterTransitEncryptionMode fromValue(String value) {
    for (final item in ClusterTransitEncryptionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterTransitEncryptionMode value: $value');
  }
}
