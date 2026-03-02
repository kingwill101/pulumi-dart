// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource Requirements.
class ResourceRequirements {
  /// Gets or sets the Cpu requirement.
  final pulumi.Input<String>? cpu;
  /// Gets or sets the Memory requirement.
  final pulumi.Input<String>? memory;

  /// Creates a new [ResourceRequirements].
  /// [cpu] Gets or sets the Cpu requirement.
  /// [memory] Gets or sets the Memory requirement.
  ResourceRequirements({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory ResourceRequirements.fromMap(Map<String, dynamic> map) {
    return ResourceRequirements(
      cpu: map['cpu'] == null ? null : (map['cpu']! as String).input(),
      memory: map['memory'] == null ? null : (map['memory']! as String).input(),
    );
  }
}

