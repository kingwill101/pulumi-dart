// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Port mappings of container app ingress
class IngressPortMappingResponse {
  /// Specifies the exposed port for the target port. If not specified, it defaults to target port
  final pulumi.Input<int?>? exposedPort;
  /// Specifies whether the app port is accessible outside of the environment
  final pulumi.Input<bool> external;
  /// Specifies the port user's container listens on
  final pulumi.Input<int> targetPort;

  /// Creates a new [IngressPortMappingResponse].
  /// [exposedPort] Specifies the exposed port for the target port. If not specified, it defaults to target port
  /// [external] Specifies whether the app port is accessible outside of the environment
  /// [targetPort] Specifies the port user's container listens on
  const IngressPortMappingResponse({
    this.exposedPort,
    required this.external,
    required this.targetPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exposedPort': ?exposedPort,
      'external': external,
      'targetPort': targetPort,
    };
  }

  factory IngressPortMappingResponse.fromMap(Map<String, dynamic> map) {
    return IngressPortMappingResponse(
      exposedPort: (() { final guardedValue = map['exposedPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      external: pulumi.Input.fromValue(map['external'] as bool),
      targetPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['targetPort'])),
    );
  }
}
