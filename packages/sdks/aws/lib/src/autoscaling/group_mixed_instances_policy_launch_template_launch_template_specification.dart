// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification {
  /// ID of the launch template. Conflicts with `launchTemplateName`.
  final pulumi.Input<String?>? launchTemplateId;
  /// Name of the launch template. Conflicts with `launchTemplateId`.
  final pulumi.Input<String?>? launchTemplateName;
  final pulumi.Input<String?>? version;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification].
  /// [launchTemplateId] ID of the launch template. Conflicts with `launchTemplateName`.
  /// [launchTemplateName] Name of the launch template. Conflicts with `launchTemplateId`.
  /// [version] Optional.
  const GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification({
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

  factory GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.fromMap(Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification(
      launchTemplateId: (() { final guardedValue = map['launchTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateName: (() { final guardedValue = map['launchTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
