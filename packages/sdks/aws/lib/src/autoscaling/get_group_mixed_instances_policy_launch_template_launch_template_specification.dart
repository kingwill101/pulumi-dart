// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification {
  /// ID of the launch template.
  final pulumi.Input<String> launchTemplateId;
  /// Name of the launch template.
  final pulumi.Input<String> launchTemplateName;
  /// Template version.
  final pulumi.Input<String> version;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification].
  /// [launchTemplateId] ID of the launch template.
  /// [launchTemplateName] Name of the launch template.
  /// [version] Template version.
  GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification({
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

  factory GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification(
      launchTemplateId: (map['launchTemplateId'] as String).input(),
      launchTemplateName: (map['launchTemplateName'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

