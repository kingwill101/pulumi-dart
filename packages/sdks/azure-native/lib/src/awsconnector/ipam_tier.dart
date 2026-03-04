/// Property value
enum IpamTier {
  advanced("advanced"),
  free("free");

  const IpamTier(this.wireValue);
  final String wireValue;

  static IpamTier fromValue(String value) {
    for (final item in IpamTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpamTier value: $value');
  }
}
