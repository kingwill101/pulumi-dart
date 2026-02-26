// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigKubeletConfigTopologyManager {
  /// The Topology Manager policy to use. This policy dictates how resource alignment is handled on the node.
  final String policy;

  /// The Topology Manager scope, defining the granularity at which policy decisions are applied. Valid values are "container" (resources are aligned per container within a pod) or "pod" (resources are aligned for the entire pod).
  final String scope;

  GetClusterNodeConfigKubeletConfigTopologyManager({
    required this.policy,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    map['scope'] = scope;
    return map;
  }

  factory GetClusterNodeConfigKubeletConfigTopologyManager.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigKubeletConfigTopologyManager(
      policy: map['policy'] as String,
      scope: map['scope'] as String,
    );
  }
}
