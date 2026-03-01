// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigKubeletConfigTopologyManager {
  /// The Topology Manager policy to use. This policy dictates how resource alignment is handled on the node.
  final String? policy;

  /// The Topology Manager scope, defining the granularity at which policy decisions are applied. Valid values are "container" (resources are aligned per container within a pod) or "pod" (resources are aligned for the entire pod).
  final String? scope;

  /// Creates a new [NodePoolNodeConfigKubeletConfigTopologyManager].
  /// [policy] The Topology Manager policy to use. This policy dictates how resource alignment is handled on the node.
  /// [scope] The Topology Manager scope, defining the granularity at which policy decisions are applied. Valid values are "container" (resources are aligned per container within a pod) or "pod" (resources are aligned for the entire pod).
  NodePoolNodeConfigKubeletConfigTopologyManager({this.policy, this.scope});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policy': ?policy, 'scope': ?scope};
  }

  factory NodePoolNodeConfigKubeletConfigTopologyManager.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNodeConfigKubeletConfigTopologyManager(
      policy: map['policy'] == null ? null : map['policy'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}
