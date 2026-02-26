// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerInstanceFlexibilityPolicyResponse2 {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String> instanceSelectionLists;

  InstanceGroupManagerInstanceFlexibilityPolicyResponse2({
    required this.instanceSelectionLists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceSelectionLists'] = instanceSelectionLists;
    return map;
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicyResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceFlexibilityPolicyResponse2(
      instanceSelectionLists:
          (map['instanceSelectionLists'] as Map).cast<String, String>(),
    );
  }
}
