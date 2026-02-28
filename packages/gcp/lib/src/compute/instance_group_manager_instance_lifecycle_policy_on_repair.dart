// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerInstanceLifecyclePolicyOnRepair {
  /// , Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allow_changing_zone is "NO".
  ///
  /// - - -
  final String? allowChangingZone;

  /// Creates a new [InstanceGroupManagerInstanceLifecyclePolicyOnRepair].
  /// [allowChangingZone] , Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allow_changing_zone is "NO".
  InstanceGroupManagerInstanceLifecyclePolicyOnRepair({
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

  factory InstanceGroupManagerInstanceLifecyclePolicyOnRepair.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicyOnRepair(
      allowChangingZone: map['allowChangingZone'] == null
          ? null
          : map['allowChangingZone'] as String,
    );
  }
}
