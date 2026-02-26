// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerInstanceFlexibilityPolicyResponse {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String> instanceSelectionLists;

  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String> instanceSelections;

  InstanceGroupManagerInstanceFlexibilityPolicyResponse({
    required this.instanceSelectionLists,
    required this.instanceSelections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceSelectionLists'] = instanceSelectionLists;
    map['instanceSelections'] = instanceSelections;
    return map;
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceFlexibilityPolicyResponse(
      instanceSelectionLists:
          (map['instanceSelectionLists'] as Map).cast<String, String>(),
      instanceSelections:
          (map['instanceSelections'] as Map).cast<String, String>(),
    );
  }
}
