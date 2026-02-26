/// Required. The type of the instance. Specified at creation time.
enum InstanceInstanceType3 {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  readPool("READ_POOL"),
  secondary("SECONDARY");

  const InstanceInstanceType3(this.value);
  final String value;

  static InstanceInstanceType3 fromValue(String value) {
    for (final item in InstanceInstanceType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceType3 value: $value');
  }
}
