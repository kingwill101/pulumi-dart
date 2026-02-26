// ignore_for_file: unused_element, unnecessary_cast

class DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate {
  /// The ID of the launch template to use for faster launching for a Windows AMI.
  final String? launchTemplateId;

  /// The name of the launch template to use for faster launching for a Windows AMI.
  final String? launchTemplateName;

  /// The version of the launch template to use for faster launching for a Windows AMI.
  final String? launchTemplateVersion;

  DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate({
    this.launchTemplateId,
    this.launchTemplateName,
    this.launchTemplateVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final launchTemplateIdValue = launchTemplateId;
    if (launchTemplateIdValue != null) {
      map['launchTemplateId'] = launchTemplateIdValue;
    }
    final launchTemplateNameValue = launchTemplateName;
    if (launchTemplateNameValue != null) {
      map['launchTemplateName'] = launchTemplateNameValue;
    }
    final launchTemplateVersionValue = launchTemplateVersion;
    if (launchTemplateVersionValue != null) {
      map['launchTemplateVersion'] = launchTemplateVersionValue;
    }
    return map;
  }

  factory DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate.fromMap(
      Map<String, dynamic> map) {
    return DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate(
      launchTemplateId: map['launchTemplateId'] == null
          ? null
          : map['launchTemplateId'] as String,
      launchTemplateName: map['launchTemplateName'] == null
          ? null
          : map['launchTemplateName'] as String,
      launchTemplateVersion: map['launchTemplateVersion'] == null
          ? null
          : map['launchTemplateVersion'] as String,
    );
  }
}
