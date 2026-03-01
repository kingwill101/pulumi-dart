// ignore_for_file: unused_element, unnecessary_cast


class ComputeEnvironmentComputeResourcesLaunchTemplate {
  /// ID of the launch template. You must specify either the launch template ID or launch template name in the request, but not both.
  final String? launchTemplateId;
  /// Name of the launch template.
  final String? launchTemplateName;
  /// The version number of the launch template. Default: The default version of the launch template.
  final String? version;

  /// Creates a new [ComputeEnvironmentComputeResourcesLaunchTemplate].
  /// [launchTemplateId] ID of the launch template. You must specify either the launch template ID or launch template name in the request, but not both.
  /// [launchTemplateName] Name of the launch template.
  /// [version] The version number of the launch template. Default: The default version of the launch template.
  ComputeEnvironmentComputeResourcesLaunchTemplate({
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

  factory ComputeEnvironmentComputeResourcesLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return ComputeEnvironmentComputeResourcesLaunchTemplate(
      launchTemplateId: map['launchTemplateId'] == null ? null : map['launchTemplateId'] as String,
      launchTemplateName: map['launchTemplateName'] == null ? null : map['launchTemplateName'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

