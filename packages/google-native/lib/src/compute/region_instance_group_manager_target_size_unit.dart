/// The unit of measure for the target size.
enum RegionInstanceGroupManagerTargetSizeUnit {
  instance("INSTANCE"),
  vcpu("VCPU");

  const RegionInstanceGroupManagerTargetSizeUnit(this.value);
  final String value;

  static RegionInstanceGroupManagerTargetSizeUnit fromValue(String value) {
    for (final item in RegionInstanceGroupManagerTargetSizeUnit.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionInstanceGroupManagerTargetSizeUnit value: $value');
  }
}
