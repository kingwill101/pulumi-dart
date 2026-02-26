/// Defines behaviour of using instances from standby pool to resize MIG.
enum InstanceGroupManagerStandbyPolicyMode2 {
  manual("MANUAL"),
  scaleOutPool("SCALE_OUT_POOL");

  const InstanceGroupManagerStandbyPolicyMode2(this.value);
  final String value;

  static InstanceGroupManagerStandbyPolicyMode2 fromValue(String value) {
    for (final item in InstanceGroupManagerStandbyPolicyMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerStandbyPolicyMode2 value: $value');
  }
}
