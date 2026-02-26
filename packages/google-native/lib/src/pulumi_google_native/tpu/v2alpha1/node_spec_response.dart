// ignore_for_file: unused_element, unnecessary_cast

import 'multi_node_params_response.dart';
import 'node_response6.dart';

/// Details of the TPU node(s) being requested. Users can request either a single node or multiple nodes. NodeSpec provides the specification for node(s) to be created.
class NodeSpecResponse {
  /// Optional. Fields to specify in case of multi-node request.
  final MultiNodeParamsResponse multiNodeParams;

  /// The node.
  final NodeResponse6 node;

  /// The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. This is only specified when requesting a single node. In case of multi-node requests, multi_node_params must be populated instead. It's an error to specify both node_id and multi_node_params.
  final String nodeId;

  /// The parent resource name.
  final String parent;

  NodeSpecResponse({
    required this.multiNodeParams,
    required this.node,
    required this.nodeId,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['multiNodeParams'] = multiNodeParams.toMap();
    map['node'] = node.toMap();
    map['nodeId'] = nodeId;
    map['parent'] = parent;
    return map;
  }

  factory NodeSpecResponse.fromMap(Map<String, dynamic> map) {
    return NodeSpecResponse(
      multiNodeParams: MultiNodeParamsResponse.fromMap(
          (map['multiNodeParams'] as Map).cast<String, dynamic>()),
      node: NodeResponse6.fromMap((map['node'] as Map).cast<String, dynamic>()),
      nodeId: map['nodeId'] as String,
      parent: map['parent'] as String,
    );
  }
}
