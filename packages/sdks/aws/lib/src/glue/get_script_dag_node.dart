// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_script_dag_node_arg.dart';

class GetScriptDagNode {
  /// Nested configuration an argument or property of a node. Defined below.
  final pulumi.Input<List<GetScriptDagNodeArg>> args;
  /// Node identifier that is unique within the node's graph.
  final pulumi.Input<String> id;
  /// Line number of the node.
  final pulumi.Input<int>? lineNumber;
  /// Type of node this is.
  final pulumi.Input<String> nodeType;

  /// Creates a new [GetScriptDagNode].
  /// [args] Nested configuration an argument or property of a node. Defined below.
  /// [id] Node identifier that is unique within the node's graph.
  /// [lineNumber] Line number of the node.
  /// [nodeType] Type of node this is.
  const GetScriptDagNode({
    required this.args,
    required this.id,
    this.lineNumber,
    required this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': pulumi.Input.mapInputValue<List<GetScriptDagNodeArg>, List<Map<String, dynamic>>>(args, (value) => pulumi.Input.encodeList<GetScriptDagNodeArg, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'lineNumber': ?lineNumber,
      'nodeType': nodeType,
    };
  }

  factory GetScriptDagNode.fromMap(Map<String, dynamic> map) {
    return GetScriptDagNode(
      args: pulumi.Input.fromValue(pulumi.Input.decodeList<GetScriptDagNodeArg>(map['args']!, (value) => GetScriptDagNodeArg.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      lineNumber: (() { final guardedValue = map['lineNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
    );
  }
}
