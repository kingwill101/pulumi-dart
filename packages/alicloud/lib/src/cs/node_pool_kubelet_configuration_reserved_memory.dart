// ignore_for_file: unused_element, unnecessary_cast


class NodePoolKubeletConfigurationReservedMemory {
  /// Memory resource limit.
  final Map<String, String>? limits;
  /// The NUMA node.
  final int? numaNode;

  /// Creates a new [NodePoolKubeletConfigurationReservedMemory].
  /// [limits] Memory resource limit.
  /// [numaNode] The NUMA node.
  NodePoolKubeletConfigurationReservedMemory({
    this.limits,
    this.numaNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits,
      'numaNode': ?numaNode,
    };
  }

  factory NodePoolKubeletConfigurationReservedMemory.fromMap(Map<String, dynamic> map) {
    return NodePoolKubeletConfigurationReservedMemory(
      limits: map['limits'] == null ? null : (map['limits'] as Map).cast<String, String>(),
      numaNode: map['numaNode'] == null ? null : map['numaNode'] as int,
    );
  }
}

