// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the Spring Cloud Gateway Operator.
class GatewayOperatorResourceRequestsResponse {
  /// Cpu allocated to each Spring Cloud Gateway Operator instance.
  final pulumi.Input<String> cpu;
  /// Instance count of the Spring Cloud Gateway Operator.
  final pulumi.Input<int> instanceCount;
  /// Memory allocated to each Spring Cloud Gateway Operator instance.
  final pulumi.Input<String> memory;

  /// Creates a new [GatewayOperatorResourceRequestsResponse].
  /// [cpu] Cpu allocated to each Spring Cloud Gateway Operator instance.
  /// [instanceCount] Instance count of the Spring Cloud Gateway Operator.
  /// [memory] Memory allocated to each Spring Cloud Gateway Operator instance.
  const GatewayOperatorResourceRequestsResponse({
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
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      instanceCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['instanceCount'])),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}
