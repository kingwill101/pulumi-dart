// ignore_for_file: unused_element, unnecessary_cast

/// PlacementPolicy defines the placement policy used by the node pool.
class PlacementPolicyResponseContainerV1beta1 {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final String policyName;

  /// TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  final String tpuTopology;

  /// The type of placement.
  final String type;

  PlacementPolicyResponseContainerV1beta1({
    required this.policyName,
    required this.tpuTopology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyName'] = policyName;
    map['tpuTopology'] = tpuTopology;
    map['type'] = type;
    return map;
  }

  factory PlacementPolicyResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return PlacementPolicyResponseContainerV1beta1(
      policyName: map['policyName'] as String,
      tpuTopology: map['tpuTopology'] as String,
      type: map['type'] as String,
    );
  }
}
