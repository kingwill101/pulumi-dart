// ignore_for_file: unused_element, unnecessary_cast


/// Resource requests of the API portal
class ApiPortalResourceRequestsResponse {
  /// Cpu allocated to each API portal instance
  final String cpu;
  /// Memory allocated to each API portal instance
  final String memory;

  /// Creates a new [ApiPortalResourceRequestsResponse].
  /// [cpu] Cpu allocated to each API portal instance
  /// [memory] Memory allocated to each API portal instance
  ApiPortalResourceRequestsResponse({
    required this.cpu,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'memory': memory,
    };
  }

  factory ApiPortalResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return ApiPortalResourceRequestsResponse(
      cpu: map['cpu'] as String,
      memory: map['memory'] as String,
    );
  }
}

