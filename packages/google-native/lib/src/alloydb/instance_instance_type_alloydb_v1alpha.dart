/// Required. The type of the instance. Specified at creation time.
enum InstanceInstanceTypeAlloydbV1alpha {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  readPool("READ_POOL"),
  secondary("SECONDARY");

  const InstanceInstanceTypeAlloydbV1alpha(this.value);
  final String value;

  static InstanceInstanceTypeAlloydbV1alpha fromValue(String value) {
    for (final item in InstanceInstanceTypeAlloydbV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceInstanceTypeAlloydbV1alpha value: $value',
    );
  }
}
