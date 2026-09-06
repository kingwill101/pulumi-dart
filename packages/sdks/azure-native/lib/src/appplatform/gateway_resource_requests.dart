// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource request payload of Spring Cloud Gateway.
class GatewayResourceRequests {
  /// Cpu allocated to each Spring Cloud Gateway instance.
  final pulumi.Input<String?>? cpu;
  /// Memory allocated to each Spring Cloud Gateway instance.
  final pulumi.Input<String?>? memory;

  /// Creates a new [GatewayResourceRequests].
  /// [cpu] Cpu allocated to each Spring Cloud Gateway instance.
  /// [memory] Memory allocated to each Spring Cloud Gateway instance.
  GatewayResourceRequests({
    pulumi.Input<String?>? cpu,
    pulumi.Input<String?>? memory,
  }) : cpu = cpu ?? pulumi.Input.fromValue('1'), memory = memory ?? pulumi.Input.fromValue('2Gi');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory GatewayResourceRequests.fromMap(Map<String, dynamic> map) {
    return GatewayResourceRequests(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
