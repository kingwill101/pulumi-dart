// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_script_dag_node_arg.dart';

class GetScriptDagNode {
  /// Nested configuration an argument or property of a node. Defined below.
  final List<GetScriptDagNodeArg> args;
  /// Node identifier that is unique within the node's graph.
  final String id;
  /// Line number of the node.
  final int? lineNumber;
  /// Type of node this is.
  final String nodeType;

  /// Creates a new [GetScriptDagNode].
  /// [args] Nested configuration an argument or property of a node. Defined below.
  /// [id] Node identifier that is unique within the node's graph.
  /// [lineNumber] Line number of the node.
  /// [nodeType] Type of node this is.
  GetScriptDagNode({
    required this.args,
    required this.id,
    this.lineNumber,
    required this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': pulumi.Input.encodeList<GetScriptDagNodeArg, Map<String, dynamic>>(args, (value) => value.toMap()),
      'id': id,
      'lineNumber': ?lineNumber,
      'nodeType': nodeType,
    };
  }

  factory GetScriptDagNode.fromMap(Map<String, dynamic> map) {
    return GetScriptDagNode(
      args: pulumi.Input.decodeList<GetScriptDagNodeArg>(map['args'], (value) => GetScriptDagNodeArg.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lineNumber: map['lineNumber'] == null ? null : map['lineNumber'] as int,
      nodeType: map['nodeType'] as String,
    );
  }
}

