// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolKubeletConfigurationReservedMemory {
  /// Memory resource limit.
  final pulumi.Input<Map<String, String>>? limits;
  /// The NUMA node.
  final pulumi.Input<int>? numaNode;

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
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      numaNode: (() { final guardedValue = map['numaNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

