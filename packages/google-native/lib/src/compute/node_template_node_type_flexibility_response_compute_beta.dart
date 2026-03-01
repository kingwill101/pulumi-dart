// ignore_for_file: unused_element, unnecessary_cast

class NodeTemplateNodeTypeFlexibilityResponseComputeBeta {
  final String cpus;
  final String localSsd;
  final String memory;

  /// Creates a new [NodeTemplateNodeTypeFlexibilityResponseComputeBeta].
  /// [cpus] Required.
  /// [localSsd] Required.
  /// [memory] Required.
  NodeTemplateNodeTypeFlexibilityResponseComputeBeta({
    required this.cpus,
    required this.localSsd,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpus': cpus,
      'localSsd': localSsd,
      'memory': memory,
    };
  }

  factory NodeTemplateNodeTypeFlexibilityResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodeTemplateNodeTypeFlexibilityResponseComputeBeta(
      cpus: map['cpus'] as String,
      localSsd: map['localSsd'] as String,
      memory: map['memory'] as String,
    );
  }
}
