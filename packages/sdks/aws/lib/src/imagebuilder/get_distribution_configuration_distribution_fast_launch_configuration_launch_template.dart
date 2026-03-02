// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate {
  /// ID of the Amazon EC2 launch template.
  final pulumi.Input<String> launchTemplateId;
  /// The name of the launch template to use for faster launching for a Windows AMI.
  final pulumi.Input<String> launchTemplateName;
  /// The version of the launch template to use for faster launching for a Windows AMI.
  final pulumi.Input<String> launchTemplateVersion;

  /// Creates a new [GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate].
  /// [launchTemplateId] ID of the Amazon EC2 launch template.
  /// [launchTemplateName] The name of the launch template to use for faster launching for a Windows AMI.
  /// [launchTemplateVersion] The version of the launch template to use for faster launching for a Windows AMI.
  GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate({
    required this.launchTemplateId,
    required this.launchTemplateName,
    required this.launchTemplateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateId': launchTemplateId,
      'launchTemplateName': launchTemplateName,
      'launchTemplateVersion': launchTemplateVersion,
    };
  }

  factory GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate(
      launchTemplateId: (map['launchTemplateId'] as String).input(),
      launchTemplateName: (map['launchTemplateName'] as String).input(),
      launchTemplateVersion: (map['launchTemplateVersion'] as String).input(),
    );
  }
}

