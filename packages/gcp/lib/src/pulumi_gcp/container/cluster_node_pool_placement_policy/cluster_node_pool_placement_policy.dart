// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolPlacementPolicy {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final String? policyName;

  /// The TPU topology like "2x4" or "2x2x2". https://cloud.google.com/kubernetes-engine/docs/concepts/plan-tpus#topology
  final String? tpuTopology;

  /// Telemetry integration for the cluster. Supported values (`ENABLED, DISABLED, SYSTEM_ONLY`);
  /// `SYSTEM_ONLY` (Only system components are monitored and logged) is only available in GKE versions 1.15 and later.
  final String type;

  ClusterNodePoolPlacementPolicy({
    this.policyName,
    this.tpuTopology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyNameValue = policyName;
    if (policyNameValue != null) {
      map['policyName'] = policyNameValue;
    }
    final tpuTopologyValue = tpuTopology;
    if (tpuTopologyValue != null) {
      map['tpuTopology'] = tpuTopologyValue;
    }
    map['type'] = type;
    return map;
  }

  factory ClusterNodePoolPlacementPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolPlacementPolicy(
      policyName:
          map['policyName'] == null ? null : map['policyName'] as String,
      tpuTopology:
          map['tpuTopology'] == null ? null : map['tpuTopology'] as String,
      type: map['type'] as String,
    );
  }
}
