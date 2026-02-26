// ignore_for_file: unused_element, unnecessary_cast

class GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification {
  /// ID of the launch template. Conflicts with <span pulumi-lang-nodejs="`launchTemplateName`" pulumi-lang-dotnet="`LaunchTemplateName`" pulumi-lang-go="`launchTemplateName`" pulumi-lang-python="`launch_template_name`" pulumi-lang-yaml="`launchTemplateName`" pulumi-lang-java="`launchTemplateName`">`launch_template_name`</span>.
  final String? launchTemplateId;

  /// Name of the launch template. Conflicts with <span pulumi-lang-nodejs="`launchTemplateId`" pulumi-lang-dotnet="`LaunchTemplateId`" pulumi-lang-go="`launchTemplateId`" pulumi-lang-python="`launch_template_id`" pulumi-lang-yaml="`launchTemplateId`" pulumi-lang-java="`launchTemplateId`">`launch_template_id`</span>.
  final String? launchTemplateName;
  final String? version;

  GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification({
    this.launchTemplateId,
    this.launchTemplateName,
    this.version,
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
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.fromMap(
      Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification(
      launchTemplateId: map['launchTemplateId'] == null
          ? null
          : map['launchTemplateId'] as String,
      launchTemplateName: map['launchTemplateName'] == null
          ? null
          : map['launchTemplateName'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
