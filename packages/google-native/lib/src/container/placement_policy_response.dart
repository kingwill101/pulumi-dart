// ignore_for_file: unused_element, unnecessary_cast


/// PlacementPolicy defines the placement policy used by the node pool.
class PlacementPolicyResponse {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final String policyName;
  /// Optional. TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  final String tpuTopology;
  /// The type of placement.
  final String type;

  /// Creates a new [PlacementPolicyResponse].
  /// [policyName] If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  /// [tpuTopology] Optional. TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  /// [type] The type of placement.
  PlacementPolicyResponse({
    required this.policyName,
    required this.tpuTopology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'tpuTopology': tpuTopology,
      'type': type,
    };
  }

  factory PlacementPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PlacementPolicyResponse(
      policyName: map['policyName'] as String,
      tpuTopology: map['tpuTopology'] as String,
      type: map['type'] as String,
    );
  }
}

