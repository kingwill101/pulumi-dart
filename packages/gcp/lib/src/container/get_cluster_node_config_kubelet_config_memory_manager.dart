// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigKubeletConfigMemoryManager {
  /// The Memory Manager policy to use. This policy guides how memory and hugepages are allocated and managed for pods on the node, influencing NUMA affinity.
  final String policy;

  /// Creates a new [GetClusterNodeConfigKubeletConfigMemoryManager].
  /// [policy] The Memory Manager policy to use. This policy guides how memory and hugepages are allocated and managed for pods on the node, influencing NUMA affinity.
  GetClusterNodeConfigKubeletConfigMemoryManager({required this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policy': policy};
  }

  factory GetClusterNodeConfigKubeletConfigMemoryManager.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigKubeletConfigMemoryManager(
      policy: map['policy'] as String,
    );
  }
}
