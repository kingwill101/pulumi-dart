/// The type of usage set for this InternalRange.
enum InternalRangeUsage {
  usageUnspecified("USAGE_UNSPECIFIED"),
  forVpc("FOR_VPC"),
  externalToVpc("EXTERNAL_TO_VPC");

  const InternalRangeUsage(this.value);
  final String value;

  static InternalRangeUsage fromValue(String value) {
    for (final item in InternalRangeUsage.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangeUsage value: $value');
  }
}
