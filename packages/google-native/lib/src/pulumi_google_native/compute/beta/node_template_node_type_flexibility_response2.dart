// ignore_for_file: unused_element, unnecessary_cast

class NodeTemplateNodeTypeFlexibilityResponse2 {
  final String cpus;
  final String localSsd;
  final String memory;

  NodeTemplateNodeTypeFlexibilityResponse2({
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

  factory NodeTemplateNodeTypeFlexibilityResponse2.fromMap(
      Map<String, dynamic> map) {
    return NodeTemplateNodeTypeFlexibilityResponse2(
      cpus: map['cpus'] as String,
      localSsd: map['localSsd'] as String,
      memory: map['memory'] as String,
    );
  }
}
