// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory {
  /// Memory resource limit.
  final Map<String, String> limits;
  /// The NUMA node.
  final int numaNode;

  /// Creates a new [GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory].
  /// [limits] Memory resource limit.
  /// [numaNode] The NUMA node.
  GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory({
    required this.limits,
    required this.numaNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': limits,
      'numaNode': numaNode,
    };
  }

  factory GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory(
      limits: (map['limits'] as Map).cast<String, String>(),
      numaNode: map['numaNode'] as int,
    );
  }
}

