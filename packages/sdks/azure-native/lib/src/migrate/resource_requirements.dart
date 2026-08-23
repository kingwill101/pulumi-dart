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
  const ResourceRequirements({
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
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
