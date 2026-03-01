// ignore_for_file: unused_element, unnecessary_cast


class ApplicationAcceleratorResourceRequestsResponse {
  /// Cpu allocated to each application accelerator component. 1 core can be represented by 1 or 1000m
  final String cpu;
  /// Instance count of the application accelerator component.
  final int instanceCount;
  /// Memory allocated to each application accelerator component. 1 GB can be represented by 1Gi or 1024Mi.
  final String memory;

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
      cpu: map['cpu'] as String,
      instanceCount: map['instanceCount'] as int,
      memory: map['memory'] as String,
    );
  }
}

