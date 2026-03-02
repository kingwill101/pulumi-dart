// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Port mappings of container app ingress
class IngressPortMapping {
  /// Specifies the exposed port for the target port. If not specified, it defaults to target port
  final pulumi.Input<int>? exposedPort;
  /// Specifies whether the app port is accessible outside of the environment
  final pulumi.Input<bool> external;
  /// Specifies the port user's container listens on
  final pulumi.Input<int> targetPort;

  /// Creates a new [IngressPortMapping].
  /// [exposedPort] Specifies the exposed port for the target port. If not specified, it defaults to target port
  /// [external] Specifies whether the app port is accessible outside of the environment
  /// [targetPort] Specifies the port user's container listens on
  IngressPortMapping({
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

  factory IngressPortMapping.fromMap(Map<String, dynamic> map) {
    return IngressPortMapping(
      exposedPort: map['exposedPort'] == null ? null : (map['exposedPort']! as int).input(),
      external: (map['external'] as bool).input(),
      targetPort: (map['targetPort'] as int).input(),
    );
  }
}

