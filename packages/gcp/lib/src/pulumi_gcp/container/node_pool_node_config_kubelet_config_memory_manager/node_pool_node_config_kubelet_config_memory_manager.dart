// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigKubeletConfigMemoryManager {
  /// The Memory Manager policy to use. This policy guides how memory and hugepages are allocated and managed for pods on the node, influencing NUMA affinity.
  final String? policy;

  NodePoolNodeConfigKubeletConfigMemoryManager({
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

  factory NodePoolNodeConfigKubeletConfigMemoryManager.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigKubeletConfigMemoryManager(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}
