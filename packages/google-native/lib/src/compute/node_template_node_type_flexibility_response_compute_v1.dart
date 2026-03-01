// ignore_for_file: unused_element, unnecessary_cast

class NodeTemplateNodeTypeFlexibilityResponseComputeV1 {
  final String cpus;
  final String localSsd;
  final String memory;

  /// Creates a new [NodeTemplateNodeTypeFlexibilityResponseComputeV1].
  /// [cpus] Required.
  /// [localSsd] Required.
  /// [memory] Required.
  NodeTemplateNodeTypeFlexibilityResponseComputeV1({
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

  factory NodeTemplateNodeTypeFlexibilityResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodeTemplateNodeTypeFlexibilityResponseComputeV1(
      cpus: map['cpus'] as String,
      localSsd: map['localSsd'] as String,
      memory: map['memory'] as String,
    );
  }
}
