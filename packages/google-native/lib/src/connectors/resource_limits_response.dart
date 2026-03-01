// ignore_for_file: unused_element, unnecessary_cast

/// Resource limits defined for connection pods of a given connector type.
class ResourceLimitsResponse {
  /// CPU limit.
  final String cpu;

  /// Memory limit.
  final String memory;

  /// Creates a new [ResourceLimitsResponse].
  /// [cpu] CPU limit.
  /// [memory] Memory limit.
  ResourceLimitsResponse({required this.cpu, required this.memory});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': cpu, 'memory': memory};
  }

  factory ResourceLimitsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLimitsResponse(
      cpu: map['cpu'] as String,
      memory: map['memory'] as String,
    );
  }
}
