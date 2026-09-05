// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate {
  /// The ID of the launch template to use for faster launching for a Windows AMI.
  final pulumi.Input<String?>? launchTemplateId;
  /// The name of the launch template to use for faster launching for a Windows AMI.
  final pulumi.Input<String?>? launchTemplateName;
  /// The version of the launch template to use for faster launching for a Windows AMI.
  final pulumi.Input<String?>? launchTemplateVersion;

  /// Creates a new [DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate].
  /// [launchTemplateId] The ID of the launch template to use for faster launching for a Windows AMI.
  /// [launchTemplateName] The name of the launch template to use for faster launching for a Windows AMI.
  /// [launchTemplateVersion] The version of the launch template to use for faster launching for a Windows AMI.
  const DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate({
    this.launchTemplateId,
    this.launchTemplateName,
    this.launchTemplateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateId': ?launchTemplateId,
      'launchTemplateName': ?launchTemplateName,
      'launchTemplateVersion': ?launchTemplateVersion,
    };
  }

  factory DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate(
      launchTemplateId: (() { final guardedValue = map['launchTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateName: (() { final guardedValue = map['launchTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateVersion: (() { final guardedValue = map['launchTemplateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
