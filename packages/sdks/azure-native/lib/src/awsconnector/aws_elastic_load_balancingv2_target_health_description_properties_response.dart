// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_detection_response.dart';
import 'target_description_response.dart';
import 'target_health_response.dart';

/// Definition of awsElasticLoadBalancingv2TargetHealthDescription
class AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse {
  /// &lt;p&gt;The anomaly detection result for the target.&lt;/p&gt; &lt;p&gt;If no anomalies were detected, the result is &lt;code&gt;normal&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If anomalies were detected, the result is &lt;code&gt;anomalous&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<AnomalyDetectionResponse?>? anomalyDetection;
  /// &lt;p&gt;The port to use to connect with the target.&lt;/p&gt;
  final pulumi.Input<String?>? healthCheckPort;
  /// &lt;p&gt;The description of the target.&lt;/p&gt;
  final pulumi.Input<TargetDescriptionResponse?>? target;
  /// &lt;p&gt;The health information for the target.&lt;/p&gt;
  final pulumi.Input<TargetHealthResponse?>? targetHealth;

  /// Creates a new [AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse].
  /// [anomalyDetection] &lt;p&gt;The anomaly detection result for the target.&lt;/p&gt; &lt;p&gt;If no anomalies were detected, the result is &lt;code&gt;normal&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If anomalies were detected, the result is &lt;code&gt;anomalous&lt;/code&gt;.&lt;/p&gt;
  /// [healthCheckPort] &lt;p&gt;The port to use to connect with the target.&lt;/p&gt;
  /// [target] &lt;p&gt;The description of the target.&lt;/p&gt;
  /// [targetHealth] &lt;p&gt;The health information for the target.&lt;/p&gt;
  const AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse({
    this.anomalyDetection,
    this.healthCheckPort,
    this.target,
    this.targetHealth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalyDetection': ?pulumi.Input.mapOptionalInputValue<AnomalyDetectionResponse, Map<String, dynamic>>(anomalyDetection, (value) => value.toMap()),
      'healthCheckPort': ?healthCheckPort,
      'target': ?pulumi.Input.mapOptionalInputValue<TargetDescriptionResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
      'targetHealth': ?pulumi.Input.mapOptionalInputValue<TargetHealthResponse, Map<String, dynamic>>(targetHealth, (value) => value.toMap()),
    };
  }

  factory AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse(
      anomalyDetection: (() { final guardedValue = map['anomalyDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalyDetectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthCheckPort: (() { final guardedValue = map['healthCheckPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetHealth: (() { final guardedValue = map['targetHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetHealthResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
