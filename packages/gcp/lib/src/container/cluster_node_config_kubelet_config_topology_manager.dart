// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigKubeletConfigTopologyManager {
  /// The Topology Manager policy controls resource alignment on the node and can be set to one of the following: none (default), best-effort, restricted, or single-numa-node.  If unset (or set to the empty string `""`), the API will treat the field as if set to "none".
  final String? policy;

  /// The Topology Manager scope, defining the granularity at which
  /// policy decisions are applied. Valid values are "container" (resources are aligned
  /// per container within a pod which is set by default) or "pod" (resources are aligned for the entire pod).  If unset (or set to the empty string `""`), the API will treat the field as if set to "container".
  final String? scope;

  /// Creates a new [ClusterNodeConfigKubeletConfigTopologyManager].
  /// [policy] The Topology Manager policy controls resource alignment on the node and can be set to one of the following: none (default), best-effort, restricted, or single-numa-node.  If unset (or set to the empty string `""`), the API will treat the field as if set to "none".
  /// [scope] The Topology Manager scope, defining the granularity at which
  ClusterNodeConfigKubeletConfigTopologyManager({this.policy, this.scope});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policy': ?policy, 'scope': ?scope};
  }

  factory ClusterNodeConfigKubeletConfigTopologyManager.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeConfigKubeletConfigTopologyManager(
      policy: map['policy'] == null ? null : map['policy'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}
