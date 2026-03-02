// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_overrides.dart';
import 'launch_template_specification.dart';

/// Definition of LaunchTemplate
class LaunchTemplate {
  /// The launch template. Specifies a launch template to use when provisioning EC2 instances for an Auto Scaling group. You must specify the following:  +  The ID or the name of the launch template, but not both.  +  The version of the launch template.   ``LaunchTemplateSpecification`` is property of the [AWS::AutoScaling::AutoScalingGroup](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html) resource. It is also a property of the [AWS::AutoScaling::AutoScalingGroup LaunchTemplate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplate.html) and [AWS::AutoScaling::AutoScalingGroup LaunchTemplateOverrides](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplateoverrides.html) property types. For information about creating a launch template, see [AWS::EC2::LaunchTemplate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html) and [Create a launch template for an Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html) in the *Amazon EC2 Auto Scaling User Guide*. For examples of launch templates, see [Auto scaling template snippets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-autoscaling.html) and the [Examples](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html#aws-resource-ec2-launchtemplate--examples) section in the ``AWS::EC2::LaunchTemplate`` resource.
  final pulumi.Input<LaunchTemplateSpecification>? launchTemplateSpecification;
  /// Any properties that you specify override the same properties in the launch template.
  final pulumi.Input<List<LaunchTemplateOverrides>>? overrides;

  /// Creates a new [LaunchTemplate].
  /// [launchTemplateSpecification] The launch template. Specifies a launch template to use when provisioning EC2 instances for an Auto Scaling group. You must specify the following:  +  The ID or the name of the launch template, but not both.  +  The version of the launch template.   ``LaunchTemplateSpecification`` is property of the [AWS::AutoScaling::AutoScalingGroup](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html) resource. It is also a property of the [AWS::AutoScaling::AutoScalingGroup LaunchTemplate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplate.html) and [AWS::AutoScaling::AutoScalingGroup LaunchTemplateOverrides](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplateoverrides.html) property types. For information about creating a launch template, see [AWS::EC2::LaunchTemplate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html) and [Create a launch template for an Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html) in the *Amazon EC2 Auto Scaling User Guide*. For examples of launch templates, see [Auto scaling template snippets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-autoscaling.html) and the [Examples](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html#aws-resource-ec2-launchtemplate--examples) section in the ``AWS::EC2::LaunchTemplate`` resource.
  /// [overrides] Any properties that you specify override the same properties in the launch template.
  LaunchTemplate({
    this.launchTemplateSpecification,
    this.overrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateSpecification': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateSpecification, Map<String, dynamic>>(launchTemplateSpecification, (value) => value.toMap()),
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<LaunchTemplateOverrides>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<LaunchTemplateOverrides, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LaunchTemplate.fromMap(Map<String, dynamic> map) {
    return LaunchTemplate(
      launchTemplateSpecification: map['launchTemplateSpecification'] == null ? null : (LaunchTemplateSpecification.fromMap((map['launchTemplateSpecification'] as Map).cast<String, dynamic>())).input(),
      overrides: map['overrides'] == null ? null : (pulumi.Input.decodeList<LaunchTemplateOverrides>(map['overrides'], (value) => LaunchTemplateOverrides.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

