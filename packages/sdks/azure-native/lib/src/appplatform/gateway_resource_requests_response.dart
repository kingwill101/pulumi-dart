// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource request payload of Spring Cloud Gateway.
class GatewayResourceRequestsResponse {
  /// Cpu allocated to each Spring Cloud Gateway instance.
  final pulumi.Input<String>? cpu;
  /// Memory allocated to each Spring Cloud Gateway instance.
  final pulumi.Input<String>? memory;

  /// Creates a new [GatewayResourceRequestsResponse].
  /// [cpu] Cpu allocated to each Spring Cloud Gateway instance.
  /// [memory] Memory allocated to each Spring Cloud Gateway instance.
  const GatewayResourceRequestsResponse({
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
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
