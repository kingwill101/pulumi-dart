// ignore_for_file: unused_element, unnecessary_cast

/// Resource requests defined for connection pods of a given connector type.
class ResourceRequestsResponse {
  /// CPU request.
  final String cpu;

  /// Memory request.
  final String memory;

  /// Creates a new [ResourceRequestsResponse].
  /// [cpu] CPU request.
  /// [memory] Memory request.
  ResourceRequestsResponse({
    required this.cpu,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpu'] = cpu;
    map['memory'] = memory;
    return map;
  }

  factory ResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRequestsResponse(
      cpu: map['cpu'] as String,
      memory: map['memory'] as String,
    );
  }
}
