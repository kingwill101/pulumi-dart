// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_definition_resource_element_template_response.dart';
import 'depends_on_profile_response.dart';

/// The arm resource definition resource element template details.
class ArmResourceDefinitionResourceElementTemplateDetailsResponse {
  /// The resource element template type.
  final pulumi.Input<ArmResourceDefinitionResourceElementTemplateResponse>?
  configuration;

  /// The depends on profile.
  final pulumi.Input<DependsOnProfileResponse>? dependsOnProfile;

  /// Name of the resource element template.
  final pulumi.Input<String>? name;

  /// The resource element template type.
  /// Expected value is 'ArmResourceDefinition'.
  final pulumi.Input<String> resourceElementType;

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
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            ArmResourceDefinitionResourceElementTemplateResponse,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'dependsOnProfile':
          ?pulumi.Input.mapOptionalInputValue<
            DependsOnProfileResponse,
            Map<String, dynamic>
          >(dependsOnProfile, (value) => value.toMap()),
      'name': ?name,
      'resourceElementType': resourceElementType,
    };
  }

  factory ArmResourceDefinitionResourceElementTemplateDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ArmResourceDefinitionResourceElementTemplateDetailsResponse(
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ArmResourceDefinitionResourceElementTemplateResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dependsOnProfile: (() {
        final guardedValue = map['dependsOnProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DependsOnProfileResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceElementType: pulumi.Input.fromValue(
        map['resourceElementType'] as String,
      ),
    );
  }
}
