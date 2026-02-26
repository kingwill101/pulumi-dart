// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigKubeletConfigMemoryManager {
  /// The [Memory
  /// Manager](https://kubernetes.io/docs/tasks/administer-cluster/memory-manager/)
  /// policy can be set to None (default) or Static. This policy dictates how memory alignment is handled on the node.  If unset (or set to the empty string `""`), the API will treat the field as if set to "None".
  final String? policy;

  ClusterNodeConfigKubeletConfigMemoryManager({
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

  factory ClusterNodeConfigKubeletConfigMemoryManager.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodeConfigKubeletConfigMemoryManager(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}
