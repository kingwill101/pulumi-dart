// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource request payload of Application Configuration Service
class ConfigurationServiceResourceRequestsResponse {
  /// Cpu allocated to each Application Configuration Service instance
  final pulumi.Input<String> cpu;
  /// Instance count of the Application Configuration Service
  final pulumi.Input<int> instanceCount;
  /// Memory allocated to each Application Configuration Service instance
  final pulumi.Input<String> memory;

  /// Creates a new [ConfigurationServiceResourceRequestsResponse].
  /// [cpu] Cpu allocated to each Application Configuration Service instance
  /// [instanceCount] Instance count of the Application Configuration Service
  /// [memory] Memory allocated to each Application Configuration Service instance
  const ConfigurationServiceResourceRequestsResponse({
    required this.cpu,
    required this.instanceCount,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'instanceCount': instanceCount,
      'memory': memory,
    };
  }

  factory ConfigurationServiceResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationServiceResourceRequestsResponse(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}

