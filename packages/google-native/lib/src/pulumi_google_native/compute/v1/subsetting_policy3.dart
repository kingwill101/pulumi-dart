enum SubsettingPolicy3 {
  consistentHashSubsetting("CONSISTENT_HASH_SUBSETTING"),
  none("NONE");

  const SubsettingPolicy3(this.value);
  final String value;

  static SubsettingPolicy3 fromValue(String value) {
    for (final item in SubsettingPolicy3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubsettingPolicy3 value: $value');
  }
}
