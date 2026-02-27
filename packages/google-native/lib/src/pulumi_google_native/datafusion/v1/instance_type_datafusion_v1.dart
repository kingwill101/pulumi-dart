/// Required. Instance type.
enum InstanceTypeDatafusionV1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  basic("BASIC"),
  enterprise("ENTERPRISE"),
  developer("DEVELOPER");

  const InstanceTypeDatafusionV1(this.value);
  final String value;

  static InstanceTypeDatafusionV1 fromValue(String value) {
    for (final item in InstanceTypeDatafusionV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTypeDatafusionV1 value: $value');
  }
}
