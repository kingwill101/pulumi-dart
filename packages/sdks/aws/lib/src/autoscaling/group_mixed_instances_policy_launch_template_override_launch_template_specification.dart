// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification {
  /// ID of the launch template. Conflicts with `launchTemplateName`.
  final pulumi.Input<String?>? launchTemplateId;
  /// Name of the launch template. Conflicts with `launchTemplateId`.
  final pulumi.Input<String?>? launchTemplateName;
  final pulumi.Input<String?>? version;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification].
  /// [launchTemplateId] ID of the launch template. Conflicts with `launchTemplateName`.
  /// [launchTemplateName] Name of the launch template. Conflicts with `launchTemplateId`.
  /// [version] Optional.
  const GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification({
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
      launchTemplateId: (() { final guardedValue = map['launchTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateName: (() { final guardedValue = map['launchTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
