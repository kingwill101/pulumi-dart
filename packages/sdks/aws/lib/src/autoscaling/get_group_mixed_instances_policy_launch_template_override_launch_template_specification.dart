// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification {
  /// ID of the launch template.
  final pulumi.Input<String> launchTemplateId;
  /// Name of the launch template.
  final pulumi.Input<String> launchTemplateName;
  /// Template version.
  final pulumi.Input<String> version;

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
      launchTemplateId: pulumi.Input.fromValue(map['launchTemplateId'] as String),
      launchTemplateName: pulumi.Input.fromValue(map['launchTemplateName'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

