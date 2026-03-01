// ignore_for_file: unused_element, unnecessary_cast


/// Resource request payload of Service Registry
class ServiceRegistryResourceRequestsResponse {
  /// Cpu allocated to each Service Registry instance
  final String cpu;
  /// Instance count of the Service Registry
  final int instanceCount;
  /// Memory allocated to each Service Registry instance
  final String memory;

  /// Creates a new [ServiceRegistryResourceRequestsResponse].
  /// [cpu] Cpu allocated to each Service Registry instance
  /// [instanceCount] Instance count of the Service Registry
  /// [memory] Memory allocated to each Service Registry instance
  ServiceRegistryResourceRequestsResponse({
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

  factory ServiceRegistryResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return ServiceRegistryResourceRequestsResponse(
      cpu: map['cpu'] as String,
      instanceCount: map['instanceCount'] as int,
      memory: map['memory'] as String,
    );
  }
}

