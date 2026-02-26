enum SubsettingPolicy {
  consistentHashSubsetting("CONSISTENT_HASH_SUBSETTING"),
  none("NONE");

  const SubsettingPolicy(this.value);
  final String value;

  static SubsettingPolicy fromValue(String value) {
    for (final item in SubsettingPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubsettingPolicy value: $value');
  }
}
