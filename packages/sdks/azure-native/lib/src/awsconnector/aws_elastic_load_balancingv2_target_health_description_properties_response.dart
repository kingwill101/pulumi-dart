// ignore_for_file: unused_element, unnecessary_cast

import 'anomaly_detection_response.dart';
import 'target_description_response.dart';
import 'target_health_response.dart';

/// Definition of awsElasticLoadBalancingv2TargetHealthDescription
class AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse {
  /// <p>The anomaly detection result for the target.</p> <p>If no anomalies were detected, the result is <code>normal</code>.</p> <p>If anomalies were detected, the result is <code>anomalous</code>.</p>
  final AnomalyDetectionResponse? anomalyDetection;
  /// <p>The port to use to connect with the target.</p>
  final String? healthCheckPort;
  /// <p>The description of the target.</p>
  final TargetDescriptionResponse? target;
  /// <p>The health information for the target.</p>
  final TargetHealthResponse? targetHealth;

  /// Creates a new [AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse].
  /// [anomalyDetection] <p>The anomaly detection result for the target.</p> <p>If no anomalies were detected, the result is <code>normal</code>.</p> <p>If anomalies were detected, the result is <code>anomalous</code>.</p>
  /// [healthCheckPort] <p>The port to use to connect with the target.</p>
  /// [target] <p>The description of the target.</p>
  /// [targetHealth] <p>The health information for the target.</p>
  AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse({
    this.anomalyDetection,
    this.healthCheckPort,
    this.target,
    this.targetHealth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalyDetection': ?anomalyDetection == null ? null : anomalyDetection!.toMap(),
      'healthCheckPort': ?healthCheckPort,
      'target': ?target == null ? null : target!.toMap(),
      'targetHealth': ?targetHealth == null ? null : targetHealth!.toMap(),
    };
  }

  factory AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse(
      anomalyDetection: map['anomalyDetection'] == null ? null : AnomalyDetectionResponse.fromMap((map['anomalyDetection'] as Map).cast<String, dynamic>()),
      healthCheckPort: map['healthCheckPort'] == null ? null : map['healthCheckPort'] as String,
      target: map['target'] == null ? null : TargetDescriptionResponse.fromMap((map['target'] as Map).cast<String, dynamic>()),
      targetHealth: map['targetHealth'] == null ? null : TargetHealthResponse.fromMap((map['targetHealth'] as Map).cast<String, dynamic>()),
    );
  }
}

