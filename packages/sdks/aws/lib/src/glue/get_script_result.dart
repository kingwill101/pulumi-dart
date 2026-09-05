// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_script_dag_edge.dart';
import 'get_script_dag_node.dart';

/// Result data returned by getScript.
class GetScriptResult {
  final List<GetScriptDagEdge>? dagEdges;
  final List<GetScriptDagNode>? dagNodes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? language;
  /// Python script generated from the DAG when the `language` argument is set to `PYTHON`.
  final String? pythonScript;
  final String? region;
  /// Scala code generated from the DAG when the `language` argument is set to `SCALA`.
  final String? scalaCode;

  /// Creates a new [GetScriptResult].
  /// [dagEdges] Optional.
  /// [dagNodes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [language] Optional.
  /// [pythonScript] Python script generated from the DAG when the `language` argument is set to `PYTHON`.
  /// [region] Optional.
  /// [scalaCode] Scala code generated from the DAG when the `language` argument is set to `SCALA`.
  const GetScriptResult({
    this.dagEdges,
    this.dagNodes,
    this.id,
    this.language,
    this.pythonScript,
    this.region,
    this.scalaCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagEdges': ?(() { final guardedValue = dagEdges; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetScriptDagEdge, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dagNodes': ?(() { final guardedValue = dagNodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetScriptDagNode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'language': ?language,
      'pythonScript': ?pythonScript,
      'region': ?region,
      'scalaCode': ?scalaCode,
    };
  }

  factory GetScriptResult.fromMap(Map<String, dynamic> map) {
    return GetScriptResult(
      dagEdges: (() { final guardedValue = map['dagEdges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetScriptDagEdge>(guardedValue, (value) => GetScriptDagEdge.fromMap((value as Map).cast<String, dynamic>())); })(),
      dagNodes: (() { final guardedValue = map['dagNodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetScriptDagNode>(guardedValue, (value) => GetScriptDagNode.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pythonScript: (() { final guardedValue = map['pythonScript']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scalaCode: (() { final guardedValue = map['scalaCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
