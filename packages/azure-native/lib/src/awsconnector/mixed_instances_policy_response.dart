// ignore_for_file: unused_element, unnecessary_cast

import 'instances_distribution_response.dart';
import 'launch_template_response.dart';

/// Definition of MixedInstancesPolicy
class MixedInstancesPolicyResponse {
  /// The instances distribution. Use this structure to specify the distribution of On-Demand Instances and Spot Instances and the allocation strategies used to fulfill On-Demand and Spot capacities for a mixed instances policy. For more information, see [Auto Scaling groups with multiple instance types and purchase options](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html) in the *Amazon EC2 Auto Scaling User Guide*.  ``InstancesDistribution`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  final InstancesDistributionResponse? instancesDistribution;
  /// One or more launch templates and the instance types (overrides) that are used to launch EC2 instances to fulfill On-Demand and Spot capacities. Use this structure to specify the launch templates and instance types (overrides) for a mixed instances policy.  ``LaunchTemplate`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  final LaunchTemplateResponse? launchTemplate;

  /// Creates a new [MixedInstancesPolicyResponse].
  /// [instancesDistribution] The instances distribution. Use this structure to specify the distribution of On-Demand Instances and Spot Instances and the allocation strategies used to fulfill On-Demand and Spot capacities for a mixed instances policy. For more information, see [Auto Scaling groups with multiple instance types and purchase options](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html) in the *Amazon EC2 Auto Scaling User Guide*.  ``InstancesDistribution`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  /// [launchTemplate] One or more launch templates and the instance types (overrides) that are used to launch EC2 instances to fulfill On-Demand and Spot capacities. Use this structure to specify the launch templates and instance types (overrides) for a mixed instances policy.  ``LaunchTemplate`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  MixedInstancesPolicyResponse({
    this.instancesDistribution,
    this.launchTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancesDistribution': ?instancesDistribution == null ? null : instancesDistribution!.toMap(),
      'launchTemplate': ?launchTemplate == null ? null : launchTemplate!.toMap(),
    };
  }

  factory MixedInstancesPolicyResponse.fromMap(Map<String, dynamic> map) {
    return MixedInstancesPolicyResponse(
      instancesDistribution: map['instancesDistribution'] == null ? null : InstancesDistributionResponse.fromMap((map['instancesDistribution'] as Map).cast<String, dynamic>()),
      launchTemplate: map['launchTemplate'] == null ? null : LaunchTemplateResponse.fromMap((map['launchTemplate'] as Map).cast<String, dynamic>()),
    );
  }
}

