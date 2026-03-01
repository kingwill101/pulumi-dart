// ignore_for_file: unused_element, unnecessary_cast

import 'instances_distribution.dart';
import 'launch_template.dart';

/// Definition of MixedInstancesPolicy
class MixedInstancesPolicy {
  /// The instances distribution. Use this structure to specify the distribution of On-Demand Instances and Spot Instances and the allocation strategies used to fulfill On-Demand and Spot capacities for a mixed instances policy. For more information, see [Auto Scaling groups with multiple instance types and purchase options](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html) in the *Amazon EC2 Auto Scaling User Guide*.  ``InstancesDistribution`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  final InstancesDistribution? instancesDistribution;
  /// One or more launch templates and the instance types (overrides) that are used to launch EC2 instances to fulfill On-Demand and Spot capacities. Use this structure to specify the launch templates and instance types (overrides) for a mixed instances policy.  ``LaunchTemplate`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  final LaunchTemplate? launchTemplate;

  /// Creates a new [MixedInstancesPolicy].
  /// [instancesDistribution] The instances distribution. Use this structure to specify the distribution of On-Demand Instances and Spot Instances and the allocation strategies used to fulfill On-Demand and Spot capacities for a mixed instances policy. For more information, see [Auto Scaling groups with multiple instance types and purchase options](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html) in the *Amazon EC2 Auto Scaling User Guide*.  ``InstancesDistribution`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  /// [launchTemplate] One or more launch templates and the instance types (overrides) that are used to launch EC2 instances to fulfill On-Demand and Spot capacities. Use this structure to specify the launch templates and instance types (overrides) for a mixed instances policy.  ``LaunchTemplate`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  MixedInstancesPolicy({
    this.instancesDistribution,
    this.launchTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancesDistribution': ?instancesDistribution == null ? null : instancesDistribution!.toMap(),
      'launchTemplate': ?launchTemplate == null ? null : launchTemplate!.toMap(),
    };
  }

  factory MixedInstancesPolicy.fromMap(Map<String, dynamic> map) {
    return MixedInstancesPolicy(
      instancesDistribution: map['instancesDistribution'] == null ? null : InstancesDistribution.fromMap((map['instancesDistribution'] as Map).cast<String, dynamic>()),
      launchTemplate: map['launchTemplate'] == null ? null : LaunchTemplate.fromMap((map['launchTemplate'] as Map).cast<String, dynamic>()),
    );
  }
}

