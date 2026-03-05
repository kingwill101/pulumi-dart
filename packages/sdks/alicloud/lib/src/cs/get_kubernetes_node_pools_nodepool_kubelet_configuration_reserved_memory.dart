// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory {
  /// Memory resource limit.
  final pulumi.Input<Map<String, String>> limits;
  /// The NUMA node.
  final pulumi.Input<int> numaNode;

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
      limits: pulumi.Input.fromValue((map['limits'] as Map).cast<String, String>()),
      numaNode: pulumi.Input.fromValue(map['numaNode'] as int),
    );
  }
}

