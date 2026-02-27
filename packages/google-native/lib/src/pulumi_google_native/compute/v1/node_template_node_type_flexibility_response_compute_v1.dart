// ignore_for_file: unused_element, unnecessary_cast

class NodeTemplateNodeTypeFlexibilityResponseComputeV1 {
  final String cpus;
  final String localSsd;
  final String memory;

  NodeTemplateNodeTypeFlexibilityResponseComputeV1({
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

  factory NodeTemplateNodeTypeFlexibilityResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return NodeTemplateNodeTypeFlexibilityResponseComputeV1(
      cpus: map['cpus'] as String,
      localSsd: map['localSsd'] as String,
      memory: map['memory'] as String,
    );
  }
}
