// ignore_for_file: unused_element, unnecessary_cast


class GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification {
  /// ID of the launch template.
  final String launchTemplateId;
  /// Name of the launch template.
  final String launchTemplateName;
  /// Template version.
  final String version;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification].
  /// [launchTemplateId] ID of the launch template.
  /// [launchTemplateName] Name of the launch template.
  /// [version] Template version.
  GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification({
    required this.launchTemplateId,
    required this.launchTemplateName,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateId': launchTemplateId,
      'launchTemplateName': launchTemplateName,
      'version': version,
    };
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification(
      launchTemplateId: map['launchTemplateId'] as String,
      launchTemplateName: map['launchTemplateName'] as String,
      version: map['version'] as String,
    );
  }
}

