// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerInstanceFlexibilityPolicy {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String>? instanceSelectionLists;

  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String>? instanceSelections;

  InstanceGroupManagerInstanceFlexibilityPolicy({
    this.instanceSelectionLists,
    this.instanceSelections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceSelectionListsValue = instanceSelectionLists;
    if (instanceSelectionListsValue != null) {
      map['instanceSelectionLists'] = instanceSelectionListsValue;
    }
    final instanceSelectionsValue = instanceSelections;
    if (instanceSelectionsValue != null) {
      map['instanceSelections'] = instanceSelectionsValue;
    }
    return map;
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicy.fromMap(
      Map<String, dynamic> map) {
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
