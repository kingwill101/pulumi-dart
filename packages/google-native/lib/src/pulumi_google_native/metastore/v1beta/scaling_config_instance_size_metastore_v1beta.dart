/// An enum of readable instance sizes, with each instance size mapping to a float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
enum ScalingConfigInstanceSizeMetastoreV1beta {
  instanceSizeUnspecified("INSTANCE_SIZE_UNSPECIFIED"),
  extraSmall("EXTRA_SMALL"),
  small("SMALL"),
  medium("MEDIUM"),
  large("LARGE"),
  extraLarge("EXTRA_LARGE");

  const ScalingConfigInstanceSizeMetastoreV1beta(this.value);
  final String value;

  static ScalingConfigInstanceSizeMetastoreV1beta fromValue(String value) {
    for (final item in ScalingConfigInstanceSizeMetastoreV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ScalingConfigInstanceSizeMetastoreV1beta value: $value');
  }
}
