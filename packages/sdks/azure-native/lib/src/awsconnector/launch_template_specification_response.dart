// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LaunchTemplateSpecification
class LaunchTemplateSpecificationResponse {
  /// The ID of the launch template. You must specify the ``LaunchTemplateID`` or the ``LaunchTemplateName``, but not both.
  final pulumi.Input<String?>? launchTemplateId;
  /// The name of the launch template. You must specify the ``LaunchTemplateName`` or the ``LaunchTemplateID``, but not both.
  final pulumi.Input<String?>? launchTemplateName;
  /// The version number of the launch template. Specifying ``$Latest`` or ``$Default`` for the template version number is not supported. However, you can specify ``LatestVersionNumber`` or ``DefaultVersionNumber`` using the ``Fn::GetAtt`` intrinsic function. For more information, see [Fn::GetAtt](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html).  For an example of using the ``Fn::GetAtt`` function, see the [Examples](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#aws-resource-autoscaling-autoscalinggroup--examples) section of the ``AWS::AutoScaling::AutoScalingGroup`` resource.
  final pulumi.Input<String?>? version;

  /// Creates a new [LaunchTemplateSpecificationResponse].
  /// [launchTemplateId] The ID of the launch template. You must specify the ``LaunchTemplateID`` or the ``LaunchTemplateName``, but not both.
  /// [launchTemplateName] The name of the launch template. You must specify the ``LaunchTemplateName`` or the ``LaunchTemplateID``, but not both.
  /// [version] The version number of the launch template. Specifying ``$Latest`` or ``$Default`` for the template version number is not supported. However, you can specify ``LatestVersionNumber`` or ``DefaultVersionNumber`` using the ``Fn::GetAtt`` intrinsic function. For more information, see [Fn::GetAtt](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html).  For an example of using the ``Fn::GetAtt`` function, see the [Examples](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-autoscalinggroup.html#aws-resource-autoscaling-autoscalinggroup--examples) section of the ``AWS::AutoScaling::AutoScalingGroup`` resource.
  const LaunchTemplateSpecificationResponse({
    this.launchTemplateId,
    this.launchTemplateName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateId': ?launchTemplateId,
      'launchTemplateName': ?launchTemplateName,
      'version': ?version,
    };
  }

  factory LaunchTemplateSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateSpecificationResponse(
      launchTemplateId: (() { final guardedValue = map['launchTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateName: (() { final guardedValue = map['launchTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
