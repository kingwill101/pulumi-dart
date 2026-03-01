// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_overrides_response.dart';
import 'launch_template_specification_response.dart';

/// Definition of LaunchTemplate
class LaunchTemplateResponse {
  /// The launch template. Specifies a launch template to use when provisioning EC2 instances for an Auto Scaling group. You must specify the following:  +  The ID or the name of the launch template, but not both.  +  The version of the launch template.   ``LaunchTemplateSpecification`` is property of the [AWS::AutoScaling::AutoScalingGroup](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html) resource. It is also a property of the [AWS::AutoScaling::AutoScalingGroup LaunchTemplate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplate.html) and [AWS::AutoScaling::AutoScalingGroup LaunchTemplateOverrides](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplateoverrides.html) property types. For information about creating a launch template, see [AWS::EC2::LaunchTemplate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html) and [Create a launch template for an Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html) in the *Amazon EC2 Auto Scaling User Guide*. For examples of launch templates, see [Auto scaling template snippets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-autoscaling.html) and the [Examples](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html#aws-resource-ec2-launchtemplate--examples) section in the ``AWS::EC2::LaunchTemplate`` resource.
  final LaunchTemplateSpecificationResponse? launchTemplateSpecification;
  /// Any properties that you specify override the same properties in the launch template.
  final List<LaunchTemplateOverridesResponse>? overrides;

  /// Creates a new [LaunchTemplateResponse].
  /// [launchTemplateSpecification] The launch template. Specifies a launch template to use when provisioning EC2 instances for an Auto Scaling group. You must specify the following:  +  The ID or the name of the launch template, but not both.  +  The version of the launch template.   ``LaunchTemplateSpecification`` is property of the [AWS::AutoScaling::AutoScalingGroup](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html) resource. It is also a property of the [AWS::AutoScaling::AutoScalingGroup LaunchTemplate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplate.html) and [AWS::AutoScaling::AutoScalingGroup LaunchTemplateOverrides](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplateoverrides.html) property types. For information about creating a launch template, see [AWS::EC2::LaunchTemplate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html) and [Create a launch template for an Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html) in the *Amazon EC2 Auto Scaling User Guide*. For examples of launch templates, see [Auto scaling template snippets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-autoscaling.html) and the [Examples](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html#aws-resource-ec2-launchtemplate--examples) section in the ``AWS::EC2::LaunchTemplate`` resource.
  /// [overrides] Any properties that you specify override the same properties in the launch template.
  LaunchTemplateResponse({
    this.launchTemplateSpecification,
    this.overrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateSpecification': ?launchTemplateSpecification == null ? null : launchTemplateSpecification!.toMap(),
      'overrides': ?overrides == null ? null : pulumi.Input.encodeList<LaunchTemplateOverridesResponse, Map<String, dynamic>>(overrides!, (value) => value.toMap()),
    };
  }

  factory LaunchTemplateResponse.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateResponse(
      launchTemplateSpecification: map['launchTemplateSpecification'] == null ? null : LaunchTemplateSpecificationResponse.fromMap((map['launchTemplateSpecification'] as Map).cast<String, dynamic>()),
      overrides: map['overrides'] == null ? null : pulumi.Input.decodeList<LaunchTemplateOverridesResponse>(map['overrides'], (value) => LaunchTemplateOverridesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

