/// The unit of measure for the target size.
enum InstanceGroupManagerTargetSizeUnit {
  instance("INSTANCE"),
  vcpu("VCPU");

  const InstanceGroupManagerTargetSizeUnit(this.value);
  final String value;

  static InstanceGroupManagerTargetSizeUnit fromValue(String value) {
    for (final item in InstanceGroupManagerTargetSizeUnit.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupManagerTargetSizeUnit value: $value',
    );
  }
}
