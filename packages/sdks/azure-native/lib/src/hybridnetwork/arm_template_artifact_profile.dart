// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Template artifact profile.
class ArmTemplateArtifactProfile {
  /// Template name.
  final pulumi.Input<String>? templateName;
  /// Template version.
  final pulumi.Input<String>? templateVersion;

  /// Creates a new [ArmTemplateArtifactProfile].
  /// [templateName] Template name.
  /// [templateVersion] Template version.
  const ArmTemplateArtifactProfile({
    this.templateName,
    this.templateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateName': ?templateName,
      'templateVersion': ?templateVersion,
    };
  }

  factory ArmTemplateArtifactProfile.fromMap(Map<String, dynamic> map) {
    return ArmTemplateArtifactProfile(
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateVersion: (() { final guardedValue = map['templateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
