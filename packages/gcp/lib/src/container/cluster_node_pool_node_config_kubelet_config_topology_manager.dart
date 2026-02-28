// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigKubeletConfigTopologyManager {
  /// The Topology Manager policy controls resource alignment on the node and can be set to one of the following: none (default), best-effort, restricted, or single-numa-node.  If unset (or set to the empty string `""`), the API will treat the field as if set to "none".
  final String? policy;

  /// The Topology Manager scope, defining the granularity at which
  /// policy decisions are applied. Valid values are "container" (resources are aligned
  /// per container within a pod which is set by default) or "pod" (resources are aligned for the entire pod).  If unset (or set to the empty string `""`), the API will treat the field as if set to "container".
  final String? scope;

  /// Creates a new [ClusterNodePoolNodeConfigKubeletConfigTopologyManager].
  /// [policy] The Topology Manager policy controls resource alignment on the node and can be set to one of the following: none (default), best-effort, restricted, or single-numa-node.  If unset (or set to the empty string `""`), the API will treat the field as if set to "none".
  /// [scope] The Topology Manager scope, defining the granularity at which
  ClusterNodePoolNodeConfigKubeletConfigTopologyManager({
    this.policy,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    return map;
  }

  factory ClusterNodePoolNodeConfigKubeletConfigTopologyManager.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigKubeletConfigTopologyManager(
      policy: map['policy'] == null ? null : map['policy'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}
