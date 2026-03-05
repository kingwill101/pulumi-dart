/// Failover speed: NA, Slow, Fast
enum FailoverTier {
  notAvailable("NotAvailable"),
  slow("Slow"),
  fast("Fast"),
  super_("Super");

  const FailoverTier(this.wireValue);
  final String wireValue;

  static FailoverTier fromValue(String value) {
    for (final item in FailoverTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverTier value: $value');
  }
}

