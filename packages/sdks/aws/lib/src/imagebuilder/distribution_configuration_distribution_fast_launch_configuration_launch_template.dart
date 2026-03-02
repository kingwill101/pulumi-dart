// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate {
  /// The ID of the launch template to use for faster launching for a Windows AMI.
  final pulumi.Input<String>? launchTemplateId;
  /// The name of the launch template to use for faster launching for a Windows AMI.
  final pulumi.Input<String>? launchTemplateName;
  /// The version of the launch template to use for faster launching for a Windows AMI.
  final pulumi.Input<String>? launchTemplateVersion;

  /// Creates a new [DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate].
  /// [launchTemplateId] The ID of the launch template to use for faster launching for a Windows AMI.
  /// [launchTemplateName] The name of the launch template to use for faster launching for a Windows AMI.
  /// [launchTemplateVersion] The version of the launch template to use for faster launching for a Windows AMI.
  DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate({
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
      launchTemplateId: map['launchTemplateId'] == null ? null : ((map['launchTemplateId'] as String).input()).input(),
      launchTemplateName: map['launchTemplateName'] == null ? null : ((map['launchTemplateName'] as String).input()).input(),
      launchTemplateVersion: map['launchTemplateVersion'] == null ? null : ((map['launchTemplateVersion'] as String).input()).input(),
    );
  }
}

