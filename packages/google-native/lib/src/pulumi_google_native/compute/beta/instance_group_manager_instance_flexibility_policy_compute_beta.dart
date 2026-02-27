// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String>? instanceSelectionLists;

  InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta({
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

  factory InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta(
      instanceSelectionLists: map['instanceSelectionLists'] == null
          ? null
          : (map['instanceSelectionLists'] as Map).cast<String, String>(),
    );
  }
}
