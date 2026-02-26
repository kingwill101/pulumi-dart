/// Required. The type of the instance. Specified at creation time.
enum InstanceInstanceType2 {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  readPool("READ_POOL"),
  secondary("SECONDARY");

  const InstanceInstanceType2(this.value);
  final String value;

  static InstanceInstanceType2 fromValue(String value) {
    for (final item in InstanceInstanceType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceType2 value: $value');
  }
}
