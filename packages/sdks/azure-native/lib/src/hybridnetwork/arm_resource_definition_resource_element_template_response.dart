// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsdartifact_profile_response.dart';

/// The arm template RE.
class ArmResourceDefinitionResourceElementTemplateResponse {
  /// Artifact profile properties.
  final pulumi.Input<NSDArtifactProfileResponse>? artifactProfile;
  /// Name and value pairs that define the parameter values. It can be  a well formed escaped JSON string.
  final pulumi.Input<String>? parameterValues;
  /// The template type.
  final pulumi.Input<String>? templateType;

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
      'artifactProfile': ?pulumi.Input.mapOptionalInputValue<NSDArtifactProfileResponse, Map<String, dynamic>>(artifactProfile, (value) => value.toMap()),
      'parameterValues': ?parameterValues,
      'templateType': ?templateType,
    };
  }

  factory ArmResourceDefinitionResourceElementTemplateResponse.fromMap(Map<String, dynamic> map) {
    return ArmResourceDefinitionResourceElementTemplateResponse(
      artifactProfile: map['artifactProfile'] == null ? null : (NSDArtifactProfileResponse.fromMap((map['artifactProfile']! as Map).cast<String, dynamic>())).input(),
      parameterValues: map['parameterValues'] == null ? null : (map['parameterValues']! as String).input(),
      templateType: map['templateType'] == null ? null : (map['templateType']! as String).input(),
    );
  }
}

