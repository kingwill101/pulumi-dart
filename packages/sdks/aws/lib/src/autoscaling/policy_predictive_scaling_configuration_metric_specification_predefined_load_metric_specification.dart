// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification {
  /// Metric type. Valid values are `ASGTotalCPUUtilization`, `ASGTotalNetworkIn`, `ASGTotalNetworkOut`, or `ALBTargetGroupRequestCount`.
  final pulumi.Input<String> predefinedMetricType;

  /// Label that uniquely identifies a specific Application Load Balancer target group from which to determine the request count served by your Auto Scaling group. You create the resource label by appending the final portion of the load balancer ARN and the final portion of the target group ARN into a single value, separated by a forward slash (/). Refer to [PredefinedMetricSpecification](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredefinedMetricSpecification.html) for more information.
  final pulumi.Input<String>? resourceLabel;

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification].
  /// [predefinedMetricType] Metric type. Valid values are `ASGTotalCPUUtilization`, `ASGTotalNetworkIn`, `ASGTotalNetworkOut`, or `ALBTargetGroupRequestCount`.
  /// [resourceLabel] Label that uniquely identifies a specific Application Load Balancer target group from which to determine the request count served by your Auto Scaling group. You create the resource label by appending the final portion of the load balancer ARN and the final portion of the target group ARN into a single value, separated by a forward slash (/). Refer to [PredefinedMetricSpecification](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredefinedMetricSpecification.html) for more information.
  PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedMetricType': predefinedMetricType,
      'resourceLabel': ?resourceLabel,
    };
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification(
      predefinedMetricType: pulumi.Input.fromValue(
        map['predefinedMetricType'] as String,
      ),
      resourceLabel: (() {
        final guardedValue = map['resourceLabel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
