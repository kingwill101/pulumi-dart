// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource request payload of Spring Cloud Gateway.
class GatewayResourceRequests {
  /// Cpu allocated to each Spring Cloud Gateway instance.
  final pulumi.Input<String>? cpu;
  /// Memory allocated to each Spring Cloud Gateway instance.
  final pulumi.Input<String>? memory;

  /// Creates a new [GatewayResourceRequests].
  /// [cpu] Cpu allocated to each Spring Cloud Gateway instance.
  /// [memory] Memory allocated to each Spring Cloud Gateway instance.
  GatewayResourceRequests({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory GatewayResourceRequests.fromMap(Map<String, dynamic> map) {
    return GatewayResourceRequests(
      cpu: map['cpu'] == null ? null : (map['cpu']! as String).input(),
      memory: map['memory'] == null ? null : (map['memory']! as String).input(),
    );
  }
}

