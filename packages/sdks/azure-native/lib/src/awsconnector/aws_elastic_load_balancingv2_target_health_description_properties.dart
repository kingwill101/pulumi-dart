// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_detection.dart';
import 'target_description.dart';
import 'target_health.dart';

/// Definition of awsElasticLoadBalancingv2TargetHealthDescription
class AwsElasticLoadBalancingv2TargetHealthDescriptionProperties {
  /// <p>The anomaly detection result for the target.</p> <p>If no anomalies were detected, the result is <code>normal</code>.</p> <p>If anomalies were detected, the result is <code>anomalous</code>.</p>
  final pulumi.Input<AnomalyDetection>? anomalyDetection;
  /// <p>The port to use to connect with the target.</p>
  final pulumi.Input<String>? healthCheckPort;
  /// <p>The description of the target.</p>
  final pulumi.Input<TargetDescription>? target;
  /// <p>The health information for the target.</p>
  final pulumi.Input<TargetHealth>? targetHealth;

  /// Creates a new [AwsElasticLoadBalancingv2TargetHealthDescriptionProperties].
  /// [anomalyDetection] <p>The anomaly detection result for the target.</p> <p>If no anomalies were detected, the result is <code>normal</code>.</p> <p>If anomalies were detected, the result is <code>anomalous</code>.</p>
  /// [healthCheckPort] <p>The port to use to connect with the target.</p>
  /// [target] <p>The description of the target.</p>
  /// [targetHealth] <p>The health information for the target.</p>
  AwsElasticLoadBalancingv2TargetHealthDescriptionProperties({
    this.anomalyDetection,
    this.healthCheckPort,
    this.target,
    this.targetHealth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalyDetection': ?pulumi.Input.mapOptionalInputValue<AnomalyDetection, Map<String, dynamic>>(anomalyDetection, (value) => value.toMap()),
      'healthCheckPort': ?healthCheckPort,
      'target': ?pulumi.Input.mapOptionalInputValue<TargetDescription, Map<String, dynamic>>(target, (value) => value.toMap()),
      'targetHealth': ?pulumi.Input.mapOptionalInputValue<TargetHealth, Map<String, dynamic>>(targetHealth, (value) => value.toMap()),
    };
  }

  factory AwsElasticLoadBalancingv2TargetHealthDescriptionProperties.fromMap(Map<String, dynamic> map) {
    return AwsElasticLoadBalancingv2TargetHealthDescriptionProperties(
      anomalyDetection: map['anomalyDetection'] == null ? null : (AnomalyDetection.fromMap((map['anomalyDetection'] as Map).cast<String, dynamic>())).input(),
      healthCheckPort: map['healthCheckPort'] == null ? null : (map['healthCheckPort'] as String).input(),
      target: map['target'] == null ? null : (TargetDescription.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
      targetHealth: map['targetHealth'] == null ? null : (TargetHealth.fromMap((map['targetHealth'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

