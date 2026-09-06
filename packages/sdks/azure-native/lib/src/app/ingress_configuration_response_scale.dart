// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scaling configuration for the ingress component. Required.
class IngressConfigurationResponseScale {
  /// Maximum number of ingress replicas. Must be greater than or equal to minReplicas.
  final pulumi.Input<int?>? maxReplicas;
  /// Minimum number of ingress replicas. Must be at least 2. Required.
  final pulumi.Input<int?>? minReplicas;

  /// Creates a new [IngressConfigurationResponseScale].
  /// [maxReplicas] Maximum number of ingress replicas. Must be greater than or equal to minReplicas.
  /// [minReplicas] Minimum number of ingress replicas. Must be at least 2. Required.
  const IngressConfigurationResponseScale({
    this.maxReplicas,
    this.minReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
    };
  }

  factory IngressConfigurationResponseScale.fromMap(Map<String, dynamic> map) {
    return IngressConfigurationResponseScale(
      maxReplicas: (() { final guardedValue = map['maxReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minReplicas: (() { final guardedValue = map['minReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
