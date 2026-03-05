// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_script_dag_edge.dart';
import 'get_script_dag_node.dart';

/// {@template pulumi_glue_get_script_get_script_args_doc}
/// Arguments for getScript.
/// {@endtemplate}
/// {@macro pulumi_glue_get_script_get_script_args_doc}
class GetScriptArgs {
  /// List of the edges in the DAG. Defined below.
  final pulumi.Input<List<GetScriptDagEdge>> dagEdges;
  /// List of the nodes in the DAG. Defined below.
  final pulumi.Input<List<GetScriptDagNode>> dagNodes;
  /// Programming language of the resulting code from the DAG. Defaults to `PYTHON`. Valid values are `PYTHON` and `SCALA`.
  final pulumi.Input<String>? language;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetScriptArgs].
  /// [dagEdges] List of the edges in the DAG. Defined below.
  /// [dagNodes] List of the nodes in the DAG. Defined below.
  /// [language] Programming language of the resulting code from the DAG. Defaults to `PYTHON`. Valid values are `PYTHON` and `SCALA`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetScriptArgs({
    required this.dagEdges,
    required this.dagNodes,
    this.language,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagEdges': pulumi.Input.mapInputValue<List<GetScriptDagEdge>, List<Map<String, dynamic>>>(dagEdges, (value) => pulumi.Input.encodeList<GetScriptDagEdge, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dagNodes': pulumi.Input.mapInputValue<List<GetScriptDagNode>, List<Map<String, dynamic>>>(dagNodes, (value) => pulumi.Input.encodeList<GetScriptDagNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'language': ?language,
      'region': ?region,
    };
  }

  factory GetScriptArgs.fromMap(Map<String, dynamic> map) {
    return GetScriptArgs(
      dagEdges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetScriptDagEdge>(map['dagEdges']!, (value) => GetScriptDagEdge.fromMap((value as Map).cast<String, dynamic>()))),
      dagNodes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetScriptDagNode>(map['dagNodes']!, (value) => GetScriptDagNode.fromMap((value as Map).cast<String, dynamic>()))),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

