/// IP Prefix Type that needs to be matched.
enum PrefixType {
  valuePrefix("Prefix"),
  valueLongestPrefix("LongestPrefix");

  const PrefixType(this.wireValue);
  final String wireValue;

  static PrefixType fromValue(String value) {
    for (final item in PrefixType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrefixType value: $value');
  }
}
