/// Required. Instance type.
enum InstanceType3 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  basic("BASIC"),
  enterprise("ENTERPRISE"),
  developer("DEVELOPER");

  const InstanceType3(this.value);
  final String value;

  static InstanceType3 fromValue(String value) {
    for (final item in InstanceType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceType3 value: $value');
  }
}
