/// A code that correspond to one type of user-facing message.
enum InstanceMessageCode {
  codeUnspecified("CODE_UNSPECIFIED"),
  zoneDistributionUnbalanced("ZONE_DISTRIBUTION_UNBALANCED");

  const InstanceMessageCode(this.value);
  final String value;

  static InstanceMessageCode fromValue(String value) {
    for (final item in InstanceMessageCode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMessageCode value: $value');
  }
}
