// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsdartifact_profile.dart';

/// The arm template RE.
class ArmResourceDefinitionResourceElementTemplate {
  /// Artifact profile properties.
  final pulumi.Input<NSDArtifactProfile>? artifactProfile;
  /// Name and value pairs that define the parameter values. It can be  a well formed escaped JSON string.
  final pulumi.Input<String>? parameterValues;
  /// The template type.
  final pulumi.Input<String>? templateType;

  /// Creates a new [ArmResourceDefinitionResourceElementTemplate].
  /// [artifactProfile] Artifact profile properties.
  /// [parameterValues] Name and value pairs that define the parameter values. It can be  a well formed escaped JSON string.
  /// [templateType] The template type.
  const ArmResourceDefinitionResourceElementTemplate({
    this.artifactProfile,
    this.parameterValues,
    this.templateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactProfile': ?pulumi.Input.mapOptionalInputValue<NSDArtifactProfile, Map<String, dynamic>>(artifactProfile, (value) => value.toMap()),
      'parameterValues': ?parameterValues,
      'templateType': ?templateType,
    };
  }

  factory ArmResourceDefinitionResourceElementTemplate.fromMap(Map<String, dynamic> map) {
    return ArmResourceDefinitionResourceElementTemplate(
      artifactProfile: (() { final guardedValue = map['artifactProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NSDArtifactProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateType: (() { final guardedValue = map['templateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
