// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange {
  /// (Optional)
  final String? ipCidrRange;

  /// (Optional)
  final String? subnetworkRangeName;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange].
  /// [ipCidrRange] (Optional)
  /// [subnetworkRangeName] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange({
    this.ipCidrRange,
    this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final subnetworkRangeNameValue = subnetworkRangeName;
    if (subnetworkRangeNameValue != null) {
      map['subnetworkRangeName'] = subnetworkRangeNameValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange(
      ipCidrRange:
          map['ipCidrRange'] == null ? null : map['ipCidrRange'] as String,
      subnetworkRangeName: map['subnetworkRangeName'] == null
          ? null
          : map['subnetworkRangeName'] as String,
    );
  }
}
