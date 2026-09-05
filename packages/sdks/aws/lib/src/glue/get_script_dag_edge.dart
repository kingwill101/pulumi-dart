// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScriptDagEdge {
  /// ID of the node at which the edge starts.
  final pulumi.Input<String> source;
  /// ID of the node at which the edge ends.
  final pulumi.Input<String> target;
  /// Target of the edge.
  final pulumi.Input<String?>? targetParameter;

  /// Creates a new [GetScriptDagEdge].
  /// [source] ID of the node at which the edge starts.
  /// [target] ID of the node at which the edge ends.
  /// [targetParameter] Target of the edge.
  const GetScriptDagEdge({
    required this.source,
    required this.target,
    this.targetParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source,
      'target': target,
      'targetParameter': ?targetParameter,
    };
  }

  factory GetScriptDagEdge.fromMap(Map<String, dynamic> map) {
    return GetScriptDagEdge(
      source: pulumi.Input.fromValue(map['source'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
      targetParameter: (() { final guardedValue = map['targetParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
