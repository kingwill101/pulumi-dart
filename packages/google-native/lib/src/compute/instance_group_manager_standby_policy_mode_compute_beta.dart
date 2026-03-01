/// Defines behaviour of using instances from standby pool to resize MIG.
enum InstanceGroupManagerStandbyPolicyModeComputeBeta {
  manual("MANUAL"),
  scaleOutPool("SCALE_OUT_POOL");

  const InstanceGroupManagerStandbyPolicyModeComputeBeta(this.value);
  final String value;

  static InstanceGroupManagerStandbyPolicyModeComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in InstanceGroupManagerStandbyPolicyModeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupManagerStandbyPolicyModeComputeBeta value: $value',
    );
  }
}
