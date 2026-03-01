/// The quota policy.
enum QuotaPolicy {
  default_("Default"),
  none("None"),
  restricted("Restricted");

  const QuotaPolicy(this.value);
  final String value;

  static QuotaPolicy fromValue(String value) {
    for (final item in QuotaPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QuotaPolicy value: $value');
  }
}

