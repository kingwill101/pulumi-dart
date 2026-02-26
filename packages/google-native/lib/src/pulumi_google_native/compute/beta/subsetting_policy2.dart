enum SubsettingPolicy2 {
  consistentHashSubsetting("CONSISTENT_HASH_SUBSETTING"),
  none("NONE");

  const SubsettingPolicy2(this.value);
  final String value;

  static SubsettingPolicy2 fromValue(String value) {
    for (final item in SubsettingPolicy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubsettingPolicy2 value: $value');
  }
}
