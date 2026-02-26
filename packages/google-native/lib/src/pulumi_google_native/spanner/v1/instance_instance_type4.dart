/// The `InstanceType` of the current instance.
enum InstanceInstanceType4 {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  provisioned("PROVISIONED"),
  freeInstance("FREE_INSTANCE");

  const InstanceInstanceType4(this.value);
  final String value;

  static InstanceInstanceType4 fromValue(String value) {
    for (final item in InstanceInstanceType4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceType4 value: $value');
  }
}
