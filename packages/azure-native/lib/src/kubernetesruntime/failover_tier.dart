/// Failover speed: NA, Slow, Fast
enum FailoverTier {
  notAvailable("NotAvailable"),
  slow("Slow"),
  fast("Fast"),
  super_("Super");

  const FailoverTier(this.value);
  final String value;

  static FailoverTier fromValue(String value) {
    for (final item in FailoverTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverTier value: $value');
  }
}

