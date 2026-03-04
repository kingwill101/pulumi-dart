// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeEnvironmentComputeResourcesLaunchTemplate {
  /// ID of the launch template. You must specify either the launch template ID or launch template name in the request, but not both.
  final pulumi.Input<String>? launchTemplateId;

  /// Name of the launch template.
  final pulumi.Input<String>? launchTemplateName;

  /// The version number of the launch template. Default: The default version of the launch template.
  final pulumi.Input<String>? version;

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

  factory ComputeEnvironmentComputeResourcesLaunchTemplate.fromMap(
    Map<String, dynamic> map,
  ) {
    return ComputeEnvironmentComputeResourcesLaunchTemplate(
      launchTemplateId: (() {
        final guardedValue = map['launchTemplateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      launchTemplateName: (() {
        final guardedValue = map['launchTemplateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
