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
    required pulumi.Output<List<GetScriptDagEdge>> dagEdges,
    required pulumi.Output<List<GetScriptDagNode>> dagNodes,
    pulumi.Output<String>? language,
    pulumi.Output<String>? region,
  }) :
      dagEdges = pulumi.Input.asInput<List<GetScriptDagEdge>>(dagEdges),
      dagNodes = pulumi.Input.asInput<List<GetScriptDagNode>>(dagNodes),
      language = pulumi.Input.asOptionalInput<String>(language),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      dagEdges: pulumi.Output.create<List<GetScriptDagEdge>>(pulumi.Input.decodeList<GetScriptDagEdge>(map['dagEdges'], (value) => GetScriptDagEdge.fromMap((value as Map).cast<String, dynamic>()))),
      dagNodes: pulumi.Output.create<List<GetScriptDagNode>>(pulumi.Input.decodeList<GetScriptDagNode>(map['dagNodes'], (value) => GetScriptDagNode.fromMap((value as Map).cast<String, dynamic>()))),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

