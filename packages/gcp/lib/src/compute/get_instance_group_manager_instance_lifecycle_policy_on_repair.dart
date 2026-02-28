// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair {
  /// Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allow_changing_zone is "NO".
  final String allowChangingZone;

  /// Creates a new [GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair].
  /// [allowChangingZone] Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allow_changing_zone is "NO".
  GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair({
    required this.allowChangingZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowChangingZone': allowChangingZone,
    };
  }

  factory GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair(
      allowChangingZone: map['allowChangingZone'] as String,
    );
  }
}

