// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_script_dag_edge/get_script_dag_edge.dart';
import '../get_script_dag_node/get_script_dag_node.dart';

/// Arguments for getScript.
class GetScriptArgs {
  /// List of the edges in the DAG. Defined below.
  final pulumi.Input<List<GetScriptDagEdge>> dagEdges;

  /// List of the nodes in the DAG. Defined below.
  final pulumi.Input<List<GetScriptDagNode>> dagNodes;

  /// Programming language of the resulting code from the DAG. Defaults to `PYTHON`. Valid values are `PYTHON` and `SCALA`.
  final pulumi.Input<String>? language;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetScriptArgs({
    required this.dagEdges,
    required this.dagNodes,
    this.language,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dagEdges'] = pulumi.Input.mapInputValue<List<GetScriptDagEdge>,
            List<Map<String, dynamic>>>(
        dagEdges,
        (value) =>
            pulumi.Input.encodeList<GetScriptDagEdge, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['dagNodes'] = pulumi.Input.mapInputValue<List<GetScriptDagNode>,
            List<Map<String, dynamic>>>(
        dagNodes,
        (value) =>
            pulumi.Input.encodeList<GetScriptDagNode, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final languageValue = language;
    if (languageValue != null) {
      map['language'] = languageValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetScriptArgs.fromMap(Map<String, dynamic> map) {
    return GetScriptArgs(
      dagEdges: pulumi.Input.asInput<List<GetScriptDagEdge>>(map['dagEdges']),
      dagNodes: pulumi.Input.asInput<List<GetScriptDagNode>>(map['dagNodes']),
      language: pulumi.Input.asOptionalInput<String>(map['language']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
