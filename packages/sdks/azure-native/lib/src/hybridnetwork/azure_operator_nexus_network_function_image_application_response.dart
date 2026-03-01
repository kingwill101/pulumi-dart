// ignore_for_file: unused_element, unnecessary_cast

import 'azure_operator_nexus_image_artifact_profile_response.dart';
import 'azure_operator_nexus_image_deploy_mapping_rule_profile_response.dart';
import 'depends_on_profile_response.dart';

/// Azure Operator Distributed Services network function image application definition.
class AzureOperatorNexusNetworkFunctionImageApplicationResponse {
  /// Azure Operator Distributed Services image artifact profile.
  final AzureOperatorNexusImageArtifactProfileResponse? artifactProfile;
  /// The artifact type.
  /// Expected value is 'ImageFile'.
  final String artifactType;
  /// Depends on profile definition.
  final DependsOnProfileResponse? dependsOnProfile;
  /// Deploy mapping rule profile.
  final AzureOperatorNexusImageDeployMappingRuleProfileResponse? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final String? name;

  /// Creates a new [AzureOperatorNexusNetworkFunctionImageApplicationResponse].
  /// [artifactProfile] Azure Operator Distributed Services image artifact profile.
  /// [artifactType] The artifact type.
  /// [dependsOnProfile] Depends on profile definition.
  /// [deployParametersMappingRuleProfile] Deploy mapping rule profile.
  /// [name] The name of the network function application.
  AzureOperatorNexusNetworkFunctionImageApplicationResponse({
    this.artifactProfile,
    required this.artifactType,
    this.dependsOnProfile,
    this.deployParametersMappingRuleProfile,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactProfile': ?artifactProfile == null ? null : artifactProfile!.toMap(),
      'artifactType': artifactType,
      'dependsOnProfile': ?dependsOnProfile == null ? null : dependsOnProfile!.toMap(),
      'deployParametersMappingRuleProfile': ?deployParametersMappingRuleProfile == null ? null : deployParametersMappingRuleProfile!.toMap(),
      'name': ?name,
    };
  }

  factory AzureOperatorNexusNetworkFunctionImageApplicationResponse.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusNetworkFunctionImageApplicationResponse(
      artifactProfile: map['artifactProfile'] == null ? null : AzureOperatorNexusImageArtifactProfileResponse.fromMap((map['artifactProfile'] as Map).cast<String, dynamic>()),
      artifactType: map['artifactType'] as String,
      dependsOnProfile: map['dependsOnProfile'] == null ? null : DependsOnProfileResponse.fromMap((map['dependsOnProfile'] as Map).cast<String, dynamic>()),
      deployParametersMappingRuleProfile: map['deployParametersMappingRuleProfile'] == null ? null : AzureOperatorNexusImageDeployMappingRuleProfileResponse.fromMap((map['deployParametersMappingRuleProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

