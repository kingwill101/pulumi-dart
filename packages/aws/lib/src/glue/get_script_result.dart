// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_script_dag_edge.dart';
import 'get_script_dag_node.dart';

/// Result data returned by getScript.
class GetScriptResult {
  final List<GetScriptDagEdge> dagEdges;
  final List<GetScriptDagNode> dagNodes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? language;
  /// Python script generated from the DAG when the `language` argument is set to `PYTHON`.
  final String pythonScript;
  final String region;
  /// Scala code generated from the DAG when the `language` argument is set to `SCALA`.
  final String scalaCode;

  /// Creates a new [GetScriptResult].
  /// [dagEdges] Required.
  /// [dagNodes] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [language] Optional.
  /// [pythonScript] Python script generated from the DAG when the `language` argument is set to `PYTHON`.
  /// [region] Required.
  /// [scalaCode] Scala code generated from the DAG when the `language` argument is set to `SCALA`.
  GetScriptResult({
    required this.dagEdges,
    required this.dagNodes,
    required this.id,
    this.language,
    required this.pythonScript,
    required this.region,
    required this.scalaCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagEdges': pulumi.Input.encodeList<GetScriptDagEdge, Map<String, dynamic>>(dagEdges, (value) => value.toMap()),
      'dagNodes': pulumi.Input.encodeList<GetScriptDagNode, Map<String, dynamic>>(dagNodes, (value) => value.toMap()),
      'id': id,
      'language': ?language,
      'pythonScript': pythonScript,
      'region': region,
      'scalaCode': scalaCode,
    };
  }

  factory GetScriptResult.fromMap(Map<String, dynamic> map) {
    return GetScriptResult(
      dagEdges: pulumi.Input.decodeList<GetScriptDagEdge>(map['dagEdges'], (value) => GetScriptDagEdge.fromMap((value as Map).cast<String, dynamic>())),
      dagNodes: pulumi.Input.decodeList<GetScriptDagNode>(map['dagNodes'], (value) => GetScriptDagNode.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      language: map['language'] == null ? null : map['language'] as String,
      pythonScript: map['pythonScript'] as String,
      region: map['region'] as String,
      scalaCode: map['scalaCode'] as String,
    );
  }
}

