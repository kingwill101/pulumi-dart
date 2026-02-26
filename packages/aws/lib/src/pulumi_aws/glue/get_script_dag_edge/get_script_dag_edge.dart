// ignore_for_file: unused_element, unnecessary_cast

class GetScriptDagEdge {
  /// ID of the node at which the edge starts.
  final String source;

  /// ID of the node at which the edge ends.
  final String target;

  /// Target of the edge.
  final String? targetParameter;

  GetScriptDagEdge({
    required this.source,
    required this.target,
    this.targetParameter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['source'] = source;
    map['target'] = target;
    final targetParameterValue = targetParameter;
    if (targetParameterValue != null) {
      map['targetParameter'] = targetParameterValue;
    }
    return map;
  }

  factory GetScriptDagEdge.fromMap(Map<String, dynamic> map) {
    return GetScriptDagEdge(
      source: map['source'] as String,
      target: map['target'] as String,
      targetParameter: map['targetParameter'] == null
          ? null
          : map['targetParameter'] as String,
    );
  }
}
