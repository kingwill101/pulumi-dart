// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the Spring Cloud Gateway Operator.
class GatewayOperatorResourceRequestsResponse {
  /// Cpu allocated to each Spring Cloud Gateway Operator instance.
  final String cpu;
  /// Instance count of the Spring Cloud Gateway Operator.
  final int instanceCount;
  /// Memory allocated to each Spring Cloud Gateway Operator instance.
  final String memory;

  /// Creates a new [GatewayOperatorResourceRequestsResponse].
  /// [cpu] Cpu allocated to each Spring Cloud Gateway Operator instance.
  /// [instanceCount] Instance count of the Spring Cloud Gateway Operator.
  /// [memory] Memory allocated to each Spring Cloud Gateway Operator instance.
  GatewayOperatorResourceRequestsResponse({
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

  factory GatewayOperatorResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return GatewayOperatorResourceRequestsResponse(
      cpu: map['cpu'] as String,
      instanceCount: map['instanceCount'] as int,
      memory: map['memory'] as String,
    );
  }
}

