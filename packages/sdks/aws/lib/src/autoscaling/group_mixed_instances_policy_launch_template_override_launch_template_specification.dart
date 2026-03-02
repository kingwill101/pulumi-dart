// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification {
  /// ID of the launch template. Conflicts with `launch_template_name`.
  final pulumi.Input<String>? launchTemplateId;
  /// Name of the launch template. Conflicts with `launch_template_id`.
  final pulumi.Input<String>? launchTemplateName;
  final pulumi.Input<String>? version;

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

  factory GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification.fromMap(Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification(
      launchTemplateId: map['launchTemplateId'] == null ? null : ((map['launchTemplateId'] as String).input()).input(),
      launchTemplateName: map['launchTemplateName'] == null ? null : ((map['launchTemplateName'] as String).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
    );
  }
}

