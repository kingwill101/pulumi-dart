// ignore_for_file: unused_element, unnecessary_cast

import 'v2_queued_resource_tpu_node_spec_node.dart';

class V2QueuedResourceTpuNodeSpec {
  /// The node.
  /// Structure is documented below.
  final V2QueuedResourceTpuNodeSpecNode node;

  /// Unqualified node identifier used to identify the node in the project once provisioned.
  final String? nodeId;

  /// The parent resource name.
  final String parent;

  /// Creates a new [V2QueuedResourceTpuNodeSpec].
  /// [node] The node.
  /// [nodeId] Unqualified node identifier used to identify the node in the project once provisioned.
  /// [parent] The parent resource name.
  V2QueuedResourceTpuNodeSpec({
    required this.node,
    this.nodeId,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['node'] = node.toMap();
    final nodeIdValue = nodeId;
    if (nodeIdValue != null) {
      map['nodeId'] = nodeIdValue;
    }
    map['parent'] = parent;
    return map;
  }

  factory V2QueuedResourceTpuNodeSpec.fromMap(Map<String, dynamic> map) {
    return V2QueuedResourceTpuNodeSpec(
      node: V2QueuedResourceTpuNodeSpecNode.fromMap(
          (map['node'] as Map).cast<String, dynamic>()),
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      parent: map['parent'] as String,
    );
  }
}
