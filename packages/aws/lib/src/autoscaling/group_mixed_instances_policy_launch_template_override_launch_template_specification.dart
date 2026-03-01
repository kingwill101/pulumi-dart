// ignore_for_file: unused_element, unnecessary_cast

class GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification {
  /// ID of the launch template. Conflicts with `launch_template_name`.
  final String? launchTemplateId;

  /// Name of the launch template. Conflicts with `launch_template_id`.
  final String? launchTemplateName;
  final String? version;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification].
  /// [launchTemplateId] ID of the launch template. Conflicts with `launch_template_name`.
  /// [launchTemplateName] Name of the launch template. Conflicts with `launch_template_id`.
  /// [version] Optional.
  GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification({
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

  factory GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification(
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
