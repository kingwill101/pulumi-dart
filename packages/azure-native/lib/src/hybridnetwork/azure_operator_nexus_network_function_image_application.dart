// ignore_for_file: unused_element, unnecessary_cast

import 'azure_operator_nexus_image_artifact_profile.dart';
import 'azure_operator_nexus_image_deploy_mapping_rule_profile.dart';
import 'depends_on_profile.dart';

/// Azure Operator Distributed Services network function image application definition.
class AzureOperatorNexusNetworkFunctionImageApplication {
  /// Azure Operator Distributed Services image artifact profile.
  final AzureOperatorNexusImageArtifactProfile? artifactProfile;
  /// The artifact type.
  /// Expected value is 'ImageFile'.
  final String artifactType;
  /// Depends on profile definition.
  final DependsOnProfile? dependsOnProfile;
  /// Deploy mapping rule profile.
  final AzureOperatorNexusImageDeployMappingRuleProfile? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final String? name;

  /// Creates a new [AzureOperatorNexusNetworkFunctionImageApplication].
  /// [artifactProfile] Azure Operator Distributed Services image artifact profile.
  /// [artifactType] The artifact type.
  /// [dependsOnProfile] Depends on profile definition.
  /// [deployParametersMappingRuleProfile] Deploy mapping rule profile.
  /// [name] The name of the network function application.
  AzureOperatorNexusNetworkFunctionImageApplication({
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

  factory AzureOperatorNexusNetworkFunctionImageApplication.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusNetworkFunctionImageApplication(
      artifactProfile: map['artifactProfile'] == null ? null : AzureOperatorNexusImageArtifactProfile.fromMap((map['artifactProfile'] as Map).cast<String, dynamic>()),
      artifactType: map['artifactType'] as String,
      dependsOnProfile: map['dependsOnProfile'] == null ? null : DependsOnProfile.fromMap((map['dependsOnProfile'] as Map).cast<String, dynamic>()),
      deployParametersMappingRuleProfile: map['deployParametersMappingRuleProfile'] == null ? null : AzureOperatorNexusImageDeployMappingRuleProfile.fromMap((map['deployParametersMappingRuleProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

