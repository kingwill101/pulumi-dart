// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instances_distribution_response.dart';
import 'launch_template_response.dart';

/// Definition of MixedInstancesPolicy
class MixedInstancesPolicyResponse {
  /// The instances distribution. Use this structure to specify the distribution of On-Demand Instances and Spot Instances and the allocation strategies used to fulfill On-Demand and Spot capacities for a mixed instances policy. For more information, see [Auto Scaling groups with multiple instance types and purchase options](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html) in the *Amazon EC2 Auto Scaling User Guide*.  ``InstancesDistribution`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  final pulumi.Input<InstancesDistributionResponse>? instancesDistribution;
  /// One or more launch templates and the instance types (overrides) that are used to launch EC2 instances to fulfill On-Demand and Spot capacities. Use this structure to specify the launch templates and instance types (overrides) for a mixed instances policy.  ``LaunchTemplate`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  final pulumi.Input<LaunchTemplateResponse>? launchTemplate;

  /// Creates a new [MixedInstancesPolicyResponse].
  /// [instancesDistribution] The instances distribution. Use this structure to specify the distribution of On-Demand Instances and Spot Instances and the allocation strategies used to fulfill On-Demand and Spot capacities for a mixed instances policy. For more information, see [Auto Scaling groups with multiple instance types and purchase options](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html) in the *Amazon EC2 Auto Scaling User Guide*.  ``InstancesDistribution`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  /// [launchTemplate] One or more launch templates and the instance types (overrides) that are used to launch EC2 instances to fulfill On-Demand and Spot capacities. Use this structure to specify the launch templates and instance types (overrides) for a mixed instances policy.  ``LaunchTemplate`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  MixedInstancesPolicyResponse({
    this.instancesDistribution,
    this.launchTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancesDistribution': ?pulumi.Input.mapOptionalInputValue<InstancesDistributionResponse, Map<String, dynamic>>(instancesDistribution, (value) => value.toMap()),
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateResponse, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
    };
  }

  factory MixedInstancesPolicyResponse.fromMap(Map<String, dynamic> map) {
    return MixedInstancesPolicyResponse(
      instancesDistribution: (() { final guardedValue = map['instancesDistribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancesDistributionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      launchTemplate: (() { final guardedValue = map['launchTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

