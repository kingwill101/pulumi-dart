// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair {
  /// , Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allow_changing_zone is "NO".
  ///
  /// - - -
  /// <a name="nested_instance_flexibility_policy"></a>The `instance_flexibility_policy` block supports:
  final String? allowChangingZone;

  RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair({
    this.allowChangingZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowChangingZoneValue = allowChangingZone;
    if (allowChangingZoneValue != null) {
      map['allowChangingZone'] = allowChangingZoneValue;
    }
    return map;
  }

  factory RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair(
      allowChangingZone: map['allowChangingZone'] == null
          ? null
          : map['allowChangingZone'] as String,
    );
  }
}
