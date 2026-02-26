/// The type of usage set for this internal range.
enum InternalRangeUsage2 {
  usageUnspecified("USAGE_UNSPECIFIED"),
  forVpc("FOR_VPC"),
  externalToVpc("EXTERNAL_TO_VPC");

  const InternalRangeUsage2(this.value);
  final String value;

  static InternalRangeUsage2 fromValue(String value) {
    for (final item in InternalRangeUsage2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangeUsage2 value: $value');
  }
}
