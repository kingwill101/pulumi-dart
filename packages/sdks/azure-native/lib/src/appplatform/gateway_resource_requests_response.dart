// ignore_for_file: unused_element, unnecessary_cast


/// Resource request payload of Spring Cloud Gateway.
class GatewayResourceRequestsResponse {
  /// Cpu allocated to each Spring Cloud Gateway instance.
  final String? cpu;
  /// Memory allocated to each Spring Cloud Gateway instance.
  final String? memory;

  /// Creates a new [GatewayResourceRequestsResponse].
  /// [cpu] Cpu allocated to each Spring Cloud Gateway instance.
  /// [memory] Memory allocated to each Spring Cloud Gateway instance.
  GatewayResourceRequestsResponse({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory GatewayResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return GatewayResourceRequestsResponse(
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

