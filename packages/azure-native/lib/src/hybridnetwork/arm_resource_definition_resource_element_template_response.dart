// ignore_for_file: unused_element, unnecessary_cast

import 'nsdartifact_profile_response.dart';

/// The arm template RE.
class ArmResourceDefinitionResourceElementTemplateResponse {
  /// Artifact profile properties.
  final NSDArtifactProfileResponse? artifactProfile;
  /// Name and value pairs that define the parameter values. It can be  a well formed escaped JSON string.
  final String? parameterValues;
  /// The template type.
  final String? templateType;

  /// Creates a new [ArmResourceDefinitionResourceElementTemplateResponse].
  /// [artifactProfile] Artifact profile properties.
  /// [parameterValues] Name and value pairs that define the parameter values. It can be  a well formed escaped JSON string.
  /// [templateType] The template type.
  ArmResourceDefinitionResourceElementTemplateResponse({
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

  factory ArmResourceDefinitionResourceElementTemplateResponse.fromMap(Map<String, dynamic> map) {
    return ArmResourceDefinitionResourceElementTemplateResponse(
      artifactProfile: map['artifactProfile'] == null ? null : NSDArtifactProfileResponse.fromMap((map['artifactProfile'] as Map).cast<String, dynamic>()),
      parameterValues: map['parameterValues'] == null ? null : map['parameterValues'] as String,
      templateType: map['templateType'] == null ? null : map['templateType'] as String,
    );
  }
}

