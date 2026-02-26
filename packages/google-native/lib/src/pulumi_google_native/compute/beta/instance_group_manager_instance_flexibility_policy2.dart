// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerInstanceFlexibilityPolicy2 {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String>? instanceSelectionLists;

  InstanceGroupManagerInstanceFlexibilityPolicy2({
    this.instanceSelectionLists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceSelectionListsValue = instanceSelectionLists;
    if (instanceSelectionListsValue != null) {
      map['instanceSelectionLists'] = instanceSelectionListsValue;
    }
    return map;
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicy2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceFlexibilityPolicy2(
      instanceSelectionLists: map['instanceSelectionLists'] == null
          ? null
          : (map['instanceSelectionLists'] as Map).cast<String, String>(),
    );
  }
}
