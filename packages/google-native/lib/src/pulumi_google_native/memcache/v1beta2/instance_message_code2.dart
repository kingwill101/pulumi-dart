/// A code that correspond to one type of user-facing message.
enum InstanceMessageCode2 {
  codeUnspecified("CODE_UNSPECIFIED"),
  zoneDistributionUnbalanced("ZONE_DISTRIBUTION_UNBALANCED");

  const InstanceMessageCode2(this.value);
  final String value;

  static InstanceMessageCode2 fromValue(String value) {
    for (final item in InstanceMessageCode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMessageCode2 value: $value');
  }
}
