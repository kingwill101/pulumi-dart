/// Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
enum InstanceTransitEncryptionMode {
  transitEncryptionModeUnspecified("TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"),
  serverAuthentication("SERVER_AUTHENTICATION"),
  disabled("DISABLED");

  const InstanceTransitEncryptionMode(this.value);
  final String value;

  static InstanceTransitEncryptionMode fromValue(String value) {
    for (final item in InstanceTransitEncryptionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTransitEncryptionMode value: $value');
  }
}

