// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerInstanceFlexibilityPolicyResponse {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String> instanceSelectionLists;

  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String> instanceSelections;

  /// Creates a new [InstanceGroupManagerInstanceFlexibilityPolicyResponse].
  /// [instanceSelectionLists] Named instance selections configuring properties that the group will use when creating new VMs.
  /// [instanceSelections] Named instance selections configuring properties that the group will use when creating new VMs.
  InstanceGroupManagerInstanceFlexibilityPolicyResponse({
    required this.instanceSelectionLists,
    required this.instanceSelections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionLists': instanceSelectionLists,
      'instanceSelections': instanceSelections,
    };
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerInstanceFlexibilityPolicyResponse(
      instanceSelectionLists: (map['instanceSelectionLists'] as Map)
          .cast<String, String>(),
      instanceSelections: (map['instanceSelections'] as Map)
          .cast<String, String>(),
    );
  }
}
