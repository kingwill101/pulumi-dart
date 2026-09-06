// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LaunchTemplateSpecification
class LaunchTemplateSpecification {
  /// Property id
  final pulumi.Input<String?>? id;
  /// The ID of the launch template. You must specify the ``LaunchTemplateID`` or the ``LaunchTemplateName``, but not both.
  final pulumi.Input<String?>? launchTemplateId;
  /// The name of the launch template. You must specify the ``LaunchTemplateName`` or the ``LaunchTemplateID``, but not both.
  final pulumi.Input<String?>? launchTemplateName;
  /// Property name
  final pulumi.Input<String?>? name;
  /// Property version
  final pulumi.Input<String?>? version;

  /// Creates a new [LaunchTemplateSpecification].
  /// [id] Property id
  /// [launchTemplateId] The ID of the launch template. You must specify the ``LaunchTemplateID`` or the ``LaunchTemplateName``, but not both.
  /// [launchTemplateName] The name of the launch template. You must specify the ``LaunchTemplateName`` or the ``LaunchTemplateID``, but not both.
  /// [name] Property name
  /// [version] Property version
  const LaunchTemplateSpecification({
    this.id,
    this.launchTemplateId,
    this.launchTemplateName,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'launchTemplateId': ?launchTemplateId,
      'launchTemplateName': ?launchTemplateName,
      'name': ?name,
      'version': ?version,
    };
  }

  factory LaunchTemplateSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateSpecification(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateId: (() { final guardedValue = map['launchTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateName: (() { final guardedValue = map['launchTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
