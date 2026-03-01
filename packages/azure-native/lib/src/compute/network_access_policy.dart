/// Policy for accessing the disk via network.
enum NetworkAccessPolicy {
  allowAll("AllowAll"),
  allowPrivate("AllowPrivate"),
  denyAll("DenyAll");

  const NetworkAccessPolicy(this.value);
  final String value;

  static NetworkAccessPolicy fromValue(String value) {
    for (final item in NetworkAccessPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkAccessPolicy value: $value');
  }
}

