// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigKubeletConfigMemoryManager {
  /// The [Memory
  /// Manager](https://kubernetes.io/docs/tasks/administer-cluster/memory-manager/)
  /// policy can be set to None (default) or Static. This policy dictates how memory alignment is handled on the node.  If unset (or set to the empty string `""`), the API will treat the field as if set to "None".
  final String? policy;

  ClusterNodePoolNodeConfigKubeletConfigMemoryManager({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    return map;
  }

  factory ClusterNodePoolNodeConfigKubeletConfigMemoryManager.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigKubeletConfigMemoryManager(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}
