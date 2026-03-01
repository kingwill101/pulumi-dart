// ignore_for_file: unused_element, unnecessary_cast

import 'nsdartifact_profile.dart';

/// The arm template RE.
class ArmResourceDefinitionResourceElementTemplate {
  /// Artifact profile properties.
  final NSDArtifactProfile? artifactProfile;
  /// Name and value pairs that define the parameter values. It can be  a well formed escaped JSON string.
  final String? parameterValues;
  /// The template type.
  final String? templateType;

  /// Creates a new [ArmResourceDefinitionResourceElementTemplate].
  /// [artifactProfile] Artifact profile properties.
  /// [parameterValues] Name and value pairs that define the parameter values. It can be  a well formed escaped JSON string.
  /// [templateType] The template type.
  ArmResourceDefinitionResourceElementTemplate({
    this.artifactProfile,
    this.parameterValues,
    this.templateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactProfile': ?artifactProfile == null ? null : artifactProfile!.toMap(),
      'parameterValues': ?parameterValues,
      'templateType': ?templateType,
    };
  }

  factory ArmResourceDefinitionResourceElementTemplate.fromMap(Map<String, dynamic> map) {
    return ArmResourceDefinitionResourceElementTemplate(
      artifactProfile: map['artifactProfile'] == null ? null : NSDArtifactProfile.fromMap((map['artifactProfile'] as Map).cast<String, dynamic>()),
      parameterValues: map['parameterValues'] == null ? null : map['parameterValues'] as String,
      templateType: map['templateType'] == null ? null : map['templateType'] as String,
    );
  }
}

