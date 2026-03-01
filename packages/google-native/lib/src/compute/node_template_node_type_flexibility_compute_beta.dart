// ignore_for_file: unused_element, unnecessary_cast

class NodeTemplateNodeTypeFlexibilityComputeBeta {
  final String? cpus;
  final String? localSsd;
  final String? memory;

  /// Creates a new [NodeTemplateNodeTypeFlexibilityComputeBeta].
  /// [cpus] Optional.
  /// [localSsd] Optional.
  /// [memory] Optional.
  NodeTemplateNodeTypeFlexibilityComputeBeta({
    this.cpus,
    this.localSsd,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpus': ?cpus,
      'localSsd': ?localSsd,
      'memory': ?memory,
    };
  }

  factory NodeTemplateNodeTypeFlexibilityComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodeTemplateNodeTypeFlexibilityComputeBeta(
      cpus: map['cpus'] == null ? null : map['cpus'] as String,
      localSsd: map['localSsd'] == null ? null : map['localSsd'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}
