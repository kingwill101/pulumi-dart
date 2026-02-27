// ignore_for_file: unused_element, unnecessary_cast

class NodeTemplateNodeTypeFlexibilityComputeV1 {
  final String? cpus;
  final String? localSsd;
  final String? memory;

  NodeTemplateNodeTypeFlexibilityComputeV1({
    this.cpus,
    this.localSsd,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpusValue = cpus;
    if (cpusValue != null) {
      map['cpus'] = cpusValue;
    }
    final localSsdValue = localSsd;
    if (localSsdValue != null) {
      map['localSsd'] = localSsdValue;
    }
    final memoryValue = memory;
    if (memoryValue != null) {
      map['memory'] = memoryValue;
    }
    return map;
  }

  factory NodeTemplateNodeTypeFlexibilityComputeV1.fromMap(
      Map<String, dynamic> map) {
    return NodeTemplateNodeTypeFlexibilityComputeV1(
      cpus: map['cpus'] == null ? null : map['cpus'] as String,
      localSsd: map['localSsd'] == null ? null : map['localSsd'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}
