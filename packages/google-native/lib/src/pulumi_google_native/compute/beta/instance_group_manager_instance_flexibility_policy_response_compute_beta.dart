// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final Map<String, String> instanceSelectionLists;

  InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta({
    required this.instanceSelectionLists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceSelectionLists'] = instanceSelectionLists;
    return map;
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta(
      instanceSelectionLists:
          (map['instanceSelectionLists'] as Map).cast<String, String>(),
    );
  }
}
