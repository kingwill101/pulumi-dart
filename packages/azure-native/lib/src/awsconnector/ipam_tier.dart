/// Property value
enum IpamTier {
  advanced("advanced"),
  free("free");

  const IpamTier(this.value);
  final String value;

  static IpamTier fromValue(String value) {
    for (final item in IpamTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpamTier value: $value');
  }
}

