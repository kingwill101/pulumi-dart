// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instances_distribution.dart';
import 'launch_template.dart';

/// Definition of MixedInstancesPolicy
class MixedInstancesPolicy {
  /// The instances distribution. Use this structure to specify the distribution of On-Demand Instances and Spot Instances and the allocation strategies used to fulfill On-Demand and Spot capacities for a mixed instances policy. For more information, see [Auto Scaling groups with multiple instance types and purchase options](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html) in the *Amazon EC2 Auto Scaling User Guide*.  ``InstancesDistribution`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  final pulumi.Input<InstancesDistribution>? instancesDistribution;
  /// One or more launch templates and the instance types (overrides) that are used to launch EC2 instances to fulfill On-Demand and Spot capacities. Use this structure to specify the launch templates and instance types (overrides) for a mixed instances policy.  ``LaunchTemplate`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  final pulumi.Input<LaunchTemplate>? launchTemplate;

  /// Creates a new [MixedInstancesPolicy].
  /// [instancesDistribution] The instances distribution. Use this structure to specify the distribution of On-Demand Instances and Spot Instances and the allocation strategies used to fulfill On-Demand and Spot capacities for a mixed instances policy. For more information, see [Auto Scaling groups with multiple instance types and purchase options](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html) in the *Amazon EC2 Auto Scaling User Guide*.  ``InstancesDistribution`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  /// [launchTemplate] One or more launch templates and the instance types (overrides) that are used to launch EC2 instances to fulfill On-Demand and Spot capacities. Use this structure to specify the launch templates and instance types (overrides) for a mixed instances policy.  ``LaunchTemplate`` is a property of the [AWS::AutoScaling::AutoScalingGroup MixedInstancesPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html) property type.
  const MixedInstancesPolicy({
    this.instancesDistribution,
    this.launchTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancesDistribution': ?pulumi.Input.mapOptionalInputValue<InstancesDistribution, Map<String, dynamic>>(instancesDistribution, (value) => value.toMap()),
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<LaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
    };
  }

  factory MixedInstancesPolicy.fromMap(Map<String, dynamic> map) {
    return MixedInstancesPolicy(
      instancesDistribution: (() { final guardedValue = map['instancesDistribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancesDistribution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      launchTemplate: (() { final guardedValue = map['launchTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

