// ignore_for_file: unused_element, unnecessary_cast

class NodeTemplateNodeTypeFlexibility {
  /// Number of virtual CPUs to use.
  final String? cpus;

  /// (Output)
  /// Use local SSD
  final String? localSsd;

  /// Physical memory available to the node, defined in MB.
  final String? memory;

  NodeTemplateNodeTypeFlexibility({
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

  factory NodeTemplateNodeTypeFlexibility.fromMap(Map<String, dynamic> map) {
    return NodeTemplateNodeTypeFlexibility(
      cpus: map['cpus'] == null ? null : map['cpus'] as String,
      localSsd: map['localSsd'] == null ? null : map['localSsd'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}
