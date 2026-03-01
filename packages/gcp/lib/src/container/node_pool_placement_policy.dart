// ignore_for_file: unused_element, unnecessary_cast

class NodePoolPlacementPolicy {
  /// If set, refers to the name of a custom resource policy supplied by the user.
  /// The resource policy must be in the same project and region as the node pool.
  /// If not found, InvalidArgument error is returned.
  final String? policyName;

  /// The [TPU topology](https://cloud.google.com/kubernetes-engine/docs/concepts/plan-tpus#topology) like `"2x4"` or `"2x2x2"`.
  final String? tpuTopology;

  /// The type of the policy. Supports a single value: COMPACT.
  /// Specifying COMPACT placement policy type places node pool's nodes in a closer
  /// physical proximity in order to reduce network latency between nodes.
  final String type;

  /// Creates a new [NodePoolPlacementPolicy].
  /// [policyName] If set, refers to the name of a custom resource policy supplied by the user.
  /// [tpuTopology] The [TPU topology](https://cloud.google.com/kubernetes-engine/docs/concepts/plan-tpus#topology) like `"2x4"` or `"2x2x2"`.
  /// [type] The type of the policy. Supports a single value: COMPACT.
  NodePoolPlacementPolicy({
    this.policyName,
    this.tpuTopology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'tpuTopology': ?tpuTopology,
      'type': type,
    };
  }

  factory NodePoolPlacementPolicy.fromMap(Map<String, dynamic> map) {
    return NodePoolPlacementPolicy(
      policyName: map['policyName'] == null
          ? null
          : map['policyName'] as String,
      tpuTopology: map['tpuTopology'] == null
          ? null
          : map['tpuTopology'] as String,
      type: map['type'] as String,
    );
  }
}
