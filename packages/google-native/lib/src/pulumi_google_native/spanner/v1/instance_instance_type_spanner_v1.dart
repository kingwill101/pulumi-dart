/// The `InstanceType` of the current instance.
enum InstanceInstanceTypeSpannerV1 {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  provisioned("PROVISIONED"),
  freeInstance("FREE_INSTANCE");

  const InstanceInstanceTypeSpannerV1(this.value);
  final String value;

  static InstanceInstanceTypeSpannerV1 fromValue(String value) {
    for (final item in InstanceInstanceTypeSpannerV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceTypeSpannerV1 value: $value');
  }
}
