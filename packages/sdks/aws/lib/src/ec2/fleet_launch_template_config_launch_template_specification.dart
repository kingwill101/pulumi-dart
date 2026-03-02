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
  FleetLaunchTemplateConfigLaunchTemplateSpecification({
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
      launchTemplateId: map['launchTemplateId'] == null ? null : ((map['launchTemplateId'] as String).input()).input(),
      launchTemplateName: map['launchTemplateName'] == null ? null : ((map['launchTemplateName'] as String).input()).input(),
      version: (map['version'] as String).input(),
    );
  }
}

