// ignore_for_file: unused_element, unnecessary_cast


/// Resource request payload of Application Configuration Service
class ConfigurationServiceResourceRequestsResponse {
  /// Cpu allocated to each Application Configuration Service instance
  final String cpu;
  /// Instance count of the Application Configuration Service
  final int instanceCount;
  /// Memory allocated to each Application Configuration Service instance
  final String memory;

  /// Creates a new [ConfigurationServiceResourceRequestsResponse].
  /// [cpu] Cpu allocated to each Application Configuration Service instance
  /// [instanceCount] Instance count of the Application Configuration Service
  /// [memory] Memory allocated to each Application Configuration Service instance
  ConfigurationServiceResourceRequestsResponse({
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
      cpu: map['cpu'] as String,
      instanceCount: map['instanceCount'] as int,
      memory: map['memory'] as String,
    );
  }
}

