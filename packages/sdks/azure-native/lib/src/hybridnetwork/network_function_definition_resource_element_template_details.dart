// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_definition_resource_element_template.dart';
import 'depends_on_profile.dart';

/// The network function definition resource element template details.
class NetworkFunctionDefinitionResourceElementTemplateDetails {
  /// The resource element template type.
  final pulumi.Input<ArmResourceDefinitionResourceElementTemplate>? configuration;
  /// The depends on profile.
  final pulumi.Input<DependsOnProfile>? dependsOnProfile;
  /// Name of the resource element template.
  final pulumi.Input<String>? name;
  /// The resource element template type.
  /// Expected value is 'NetworkFunctionDefinition'.
  final pulumi.Input<String> resourceElementType;

  /// Creates a new [NetworkFunctionDefinitionResourceElementTemplateDetails].
  /// [configuration] The resource element template type.
  /// [dependsOnProfile] The depends on profile.
  /// [name] Name of the resource element template.
  /// [resourceElementType] The resource element template type.
  NetworkFunctionDefinitionResourceElementTemplateDetails({
    this.configuration,
    this.dependsOnProfile,
    this.name,
    required this.resourceElementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<ArmResourceDefinitionResourceElementTemplate, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'dependsOnProfile': ?pulumi.Input.mapOptionalInputValue<DependsOnProfile, Map<String, dynamic>>(dependsOnProfile, (value) => value.toMap()),
      'name': ?name,
      'resourceElementType': resourceElementType,
    };
  }

  factory NetworkFunctionDefinitionResourceElementTemplateDetails.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionDefinitionResourceElementTemplateDetails(
      configuration: map['configuration'] == null ? null : (ArmResourceDefinitionResourceElementTemplate.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input(),
      dependsOnProfile: map['dependsOnProfile'] == null ? null : (DependsOnProfile.fromMap((map['dependsOnProfile']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceElementType: (map['resourceElementType'] as String).input(),
    );
  }
}

