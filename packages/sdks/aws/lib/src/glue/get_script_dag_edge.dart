// ignore_for_file: unused_element, unnecessary_cast


class GetScriptDagEdge {
  /// ID of the node at which the edge starts.
  final String source;
  /// ID of the node at which the edge ends.
  final String target;
  /// Target of the edge.
  final String? targetParameter;

  /// Creates a new [GetScriptDagEdge].
  /// [source] ID of the node at which the edge starts.
  /// [target] ID of the node at which the edge ends.
  /// [targetParameter] Target of the edge.
  GetScriptDagEdge({
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
      source: map['source'] as String,
      target: map['target'] as String,
      targetParameter: map['targetParameter'] == null ? null : map['targetParameter'] as String,
    );
  }
}

