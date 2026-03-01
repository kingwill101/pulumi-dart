/// A code that correspond to one type of user-facing message.
enum InstanceMessageCodeMemcacheV1beta2 {
  codeUnspecified("CODE_UNSPECIFIED"),
  zoneDistributionUnbalanced("ZONE_DISTRIBUTION_UNBALANCED");

  const InstanceMessageCodeMemcacheV1beta2(this.value);
  final String value;

  static InstanceMessageCodeMemcacheV1beta2 fromValue(String value) {
    for (final item in InstanceMessageCodeMemcacheV1beta2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceMessageCodeMemcacheV1beta2 value: $value',
    );
  }
}
