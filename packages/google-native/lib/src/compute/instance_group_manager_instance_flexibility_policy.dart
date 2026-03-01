// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerInstanceFlexibilityPolicy {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String>? instanceSelectionLists;

  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String>? instanceSelections;

  /// Creates a new [InstanceGroupManagerInstanceFlexibilityPolicy].
  /// [instanceSelectionLists] Named instance selections configuring properties that the group will use when creating new VMs.
  /// [instanceSelections] Named instance selections configuring properties that the group will use when creating new VMs.
  InstanceGroupManagerInstanceFlexibilityPolicy({
    this.instanceSelectionLists,
    this.instanceSelections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionLists': ?instanceSelectionLists,
      'instanceSelections': ?instanceSelections,
    };
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerInstanceFlexibilityPolicy(
      instanceSelectionLists: map['instanceSelectionLists'] == null
          ? null
          : (map['instanceSelectionLists'] as Map).cast<String, String>(),
      instanceSelections: map['instanceSelections'] == null
          ? null
          : (map['instanceSelections'] as Map).cast<String, String>(),
    );
  }
}
