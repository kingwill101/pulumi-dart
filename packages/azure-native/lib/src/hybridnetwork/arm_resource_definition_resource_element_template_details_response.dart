// ignore_for_file: unused_element, unnecessary_cast

import 'arm_resource_definition_resource_element_template_response.dart';
import 'depends_on_profile_response.dart';

/// The arm resource definition resource element template details.
class ArmResourceDefinitionResourceElementTemplateDetailsResponse {
  /// The resource element template type.
  final ArmResourceDefinitionResourceElementTemplateResponse? configuration;
  /// The depends on profile.
  final DependsOnProfileResponse? dependsOnProfile;
  /// Name of the resource element template.
  final String? name;
  /// The resource element template type.
  /// Expected value is 'ArmResourceDefinition'.
  final String resourceElementType;

  /// Creates a new [ArmResourceDefinitionResourceElementTemplateDetailsResponse].
  /// [configuration] The resource element template type.
  /// [dependsOnProfile] The depends on profile.
  /// [name] Name of the resource element template.
  /// [resourceElementType] The resource element template type.
  ArmResourceDefinitionResourceElementTemplateDetailsResponse({
    this.configuration,
    this.dependsOnProfile,
    this.name,
    required this.resourceElementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'dependsOnProfile': ?dependsOnProfile == null ? null : dependsOnProfile!.toMap(),
      'name': ?name,
      'resourceElementType': resourceElementType,
    };
  }

  factory ArmResourceDefinitionResourceElementTemplateDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ArmResourceDefinitionResourceElementTemplateDetailsResponse(
      configuration: map['configuration'] == null ? null : ArmResourceDefinitionResourceElementTemplateResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      dependsOnProfile: map['dependsOnProfile'] == null ? null : DependsOnProfileResponse.fromMap((map['dependsOnProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      resourceElementType: map['resourceElementType'] as String,
    );
  }
}

