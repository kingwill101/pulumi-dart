// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAcceleratorResourceRequestsResponse {
  /// Cpu allocated to each application accelerator component. 1 core can be represented by 1 or 1000m
  final pulumi.Input<String> cpu;
  /// Instance count of the application accelerator component.
  final pulumi.Input<int> instanceCount;
  /// Memory allocated to each application accelerator component. 1 GB can be represented by 1Gi or 1024Mi.
  final pulumi.Input<String> memory;

  /// Creates a new [ApplicationAcceleratorResourceRequestsResponse].
  /// [cpu] Cpu allocated to each application accelerator component. 1 core can be represented by 1 or 1000m
  /// [instanceCount] Instance count of the application accelerator component.
  /// [memory] Memory allocated to each application accelerator component. 1 GB can be represented by 1Gi or 1024Mi.
  ApplicationAcceleratorResourceRequestsResponse({
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

  factory ApplicationAcceleratorResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationAcceleratorResourceRequestsResponse(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}

