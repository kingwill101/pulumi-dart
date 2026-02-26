/// Required. Instance type.
enum InstanceType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  basic("BASIC"),
  enterprise("ENTERPRISE"),
  developer("DEVELOPER");

  const InstanceType2(this.value);
  final String value;

  static InstanceType2 fromValue(String value) {
    for (final item in InstanceType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceType2 value: $value');
  }
}
