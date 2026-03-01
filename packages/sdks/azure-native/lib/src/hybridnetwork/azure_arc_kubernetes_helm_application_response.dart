// ignore_for_file: unused_element, unnecessary_cast

import 'azure_arc_kubernetes_artifact_profile_response.dart';
import 'azure_arc_kubernetes_deploy_mapping_rule_profile_response.dart';
import 'depends_on_profile_response.dart';

/// Azure arc kubernetes helm application configurations.
class AzureArcKubernetesHelmApplicationResponse {
  /// Azure arc kubernetes artifact profile.
  final AzureArcKubernetesArtifactProfileResponse? artifactProfile;
  /// The artifact type.
  /// Expected value is 'HelmPackage'.
  final String artifactType;
  /// Depends on profile definition.
  final DependsOnProfileResponse? dependsOnProfile;
  /// Deploy mapping rule profile.
  final AzureArcKubernetesDeployMappingRuleProfileResponse? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final String? name;

  /// Creates a new [AzureArcKubernetesHelmApplicationResponse].
  /// [artifactProfile] Azure arc kubernetes artifact profile.
  /// [artifactType] The artifact type.
  /// [dependsOnProfile] Depends on profile definition.
  /// [deployParametersMappingRuleProfile] Deploy mapping rule profile.
  /// [name] The name of the network function application.
  AzureArcKubernetesHelmApplicationResponse({
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

  factory AzureArcKubernetesHelmApplicationResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesHelmApplicationResponse(
      artifactProfile: map['artifactProfile'] == null ? null : AzureArcKubernetesArtifactProfileResponse.fromMap((map['artifactProfile'] as Map).cast<String, dynamic>()),
      artifactType: map['artifactType'] as String,
      dependsOnProfile: map['dependsOnProfile'] == null ? null : DependsOnProfileResponse.fromMap((map['dependsOnProfile'] as Map).cast<String, dynamic>()),
      deployParametersMappingRuleProfile: map['deployParametersMappingRuleProfile'] == null ? null : AzureArcKubernetesDeployMappingRuleProfileResponse.fromMap((map['deployParametersMappingRuleProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

