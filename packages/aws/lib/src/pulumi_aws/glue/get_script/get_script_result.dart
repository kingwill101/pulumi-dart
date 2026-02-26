// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_script_dag_edge/get_script_dag_edge.dart';
import '../get_script_dag_node/get_script_dag_node.dart';

/// Result data returned by getScript.
class GetScriptResult {
  final List<GetScriptDagEdge> dagEdges;
  final List<GetScriptDagNode> dagNodes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? language;

  /// Python script generated from the DAG when the <span pulumi-lang-nodejs="`language`" pulumi-lang-dotnet="`Language`" pulumi-lang-go="`language`" pulumi-lang-python="`language`" pulumi-lang-yaml="`language`" pulumi-lang-java="`language`">`language`</span> argument is set to `PYTHON`.
  final String pythonScript;
  final String region;

  /// Scala code generated from the DAG when the <span pulumi-lang-nodejs="`language`" pulumi-lang-dotnet="`Language`" pulumi-lang-go="`language`" pulumi-lang-python="`language`" pulumi-lang-yaml="`language`" pulumi-lang-java="`language`">`language`</span> argument is set to `SCALA`.
  final String scalaCode;

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
    final map = <String, dynamic>{};
    map['dagEdges'] = Input.encodeList<GetScriptDagEdge, Map<String, dynamic>>(
        dagEdges, (value) => value.toMap());
    map['dagNodes'] = Input.encodeList<GetScriptDagNode, Map<String, dynamic>>(
        dagNodes, (value) => value.toMap());
    map['id'] = id;
    final languageValue = language;
    if (languageValue != null) {
      map['language'] = languageValue;
    }
    map['pythonScript'] = pythonScript;
    map['region'] = region;
    map['scalaCode'] = scalaCode;
    return map;
  }

  factory GetScriptResult.fromMap(Map<String, dynamic> map) {
    return GetScriptResult(
      dagEdges: Input.decodeList<GetScriptDagEdge>(
          map['dagEdges'],
          (value) =>
              GetScriptDagEdge.fromMap((value as Map).cast<String, dynamic>())),
      dagNodes: Input.decodeList<GetScriptDagNode>(
          map['dagNodes'],
          (value) =>
              GetScriptDagNode.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      language: map['language'] == null ? null : map['language'] as String,
      pythonScript: map['pythonScript'] as String,
      region: map['region'] as String,
      scalaCode: map['scalaCode'] as String,
    );
  }
}
