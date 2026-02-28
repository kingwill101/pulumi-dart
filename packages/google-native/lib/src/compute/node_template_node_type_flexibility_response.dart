// ignore_for_file: unused_element, unnecessary_cast

class NodeTemplateNodeTypeFlexibilityResponse {
  final String cpus;
  final String localSsd;
  final String memory;

  /// Creates a new [NodeTemplateNodeTypeFlexibilityResponse].
  /// [cpus] Required.
  /// [localSsd] Required.
  /// [memory] Required.
  NodeTemplateNodeTypeFlexibilityResponse({
    required this.cpus,
    required this.localSsd,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpus'] = cpus;
    map['localSsd'] = localSsd;
    map['memory'] = memory;
    return map;
  }

  factory NodeTemplateNodeTypeFlexibilityResponse.fromMap(
      Map<String, dynamic> map) {
    return NodeTemplateNodeTypeFlexibilityResponse(
      cpus: map['cpus'] as String,
      localSsd: map['localSsd'] as String,
      memory: map['memory'] as String,
    );
  }
}
