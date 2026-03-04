// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Build service agent pool size properties
class BuildServiceAgentPoolSizePropertiesResponse {
  /// The cpu property of build service agent pool size
  final pulumi.Input<String> cpu;

  /// The memory property of build service agent pool size
  final pulumi.Input<String> memory;

  /// The name of build service agent pool size
  final pulumi.Input<String>? name;

  /// Creates a new [BuildServiceAgentPoolSizePropertiesResponse].
  /// [cpu] The cpu property of build service agent pool size
  /// [memory] The memory property of build service agent pool size
  /// [name] The name of build service agent pool size
  BuildServiceAgentPoolSizePropertiesResponse({
    required this.cpu,
    required this.memory,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': cpu, 'memory': memory, 'name': ?name};
  }

  factory BuildServiceAgentPoolSizePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BuildServiceAgentPoolSizePropertiesResponse(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
