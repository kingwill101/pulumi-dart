/// Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
enum InstanceTransitEncryptionMode2 {
  transitEncryptionModeUnspecified("TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"),
  serverAuthentication("SERVER_AUTHENTICATION"),
  disabled("DISABLED");

  const InstanceTransitEncryptionMode2(this.value);
  final String value;

  static InstanceTransitEncryptionMode2 fromValue(String value) {
    for (final item in InstanceTransitEncryptionMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTransitEncryptionMode2 value: $value');
  }
}
