// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetLaunchTemplateConfigLaunchTemplateSpecification {
  /// The ID of the launch template.
  final pulumi.Input<String>? launchTemplateId;
  /// The name of the launch template.
  final pulumi.Input<String>? launchTemplateName;
  /// The launch template version number, `$Latest`, or `$Default.`
  final pulumi.Input<String> version;

  /// Creates a new [FleetLaunchTemplateConfigLaunchTemplateSpecification].
  /// [launchTemplateId] The ID of the launch template.
  /// [launchTemplateName] The name of the launch template.
  /// [version] The launch template version number, `$Latest`, or `$Default.`
  const FleetLaunchTemplateConfigLaunchTemplateSpecification({
    this.launchTemplateId,
    this.launchTemplateName,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateId': ?launchTemplateId,
      'launchTemplateName': ?launchTemplateName,
      'version': version,
    };
  }

  factory FleetLaunchTemplateConfigLaunchTemplateSpecification.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigLaunchTemplateSpecification(
      launchTemplateId: (() { final guardedValue = map['launchTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateName: (() { final guardedValue = map['launchTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
