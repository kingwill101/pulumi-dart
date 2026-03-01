// ignore_for_file: unused_element, unnecessary_cast

import 'azure_arc_kubernetes_artifact_profile.dart';
import 'azure_arc_kubernetes_deploy_mapping_rule_profile.dart';
import 'depends_on_profile.dart';

/// Azure arc kubernetes helm application configurations.
class AzureArcKubernetesHelmApplication {
  /// Azure arc kubernetes artifact profile.
  final AzureArcKubernetesArtifactProfile? artifactProfile;
  /// The artifact type.
  /// Expected value is 'HelmPackage'.
  final String artifactType;
  /// Depends on profile definition.
  final DependsOnProfile? dependsOnProfile;
  /// Deploy mapping rule profile.
  final AzureArcKubernetesDeployMappingRuleProfile? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final String? name;

  /// Creates a new [AzureArcKubernetesHelmApplication].
  /// [artifactProfile] Azure arc kubernetes artifact profile.
  /// [artifactType] The artifact type.
  /// [dependsOnProfile] Depends on profile definition.
  /// [deployParametersMappingRuleProfile] Deploy mapping rule profile.
  /// [name] The name of the network function application.
  AzureArcKubernetesHelmApplication({
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

  factory AzureArcKubernetesHelmApplication.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesHelmApplication(
      artifactProfile: map['artifactProfile'] == null ? null : AzureArcKubernetesArtifactProfile.fromMap((map['artifactProfile'] as Map).cast<String, dynamic>()),
      artifactType: map['artifactType'] as String,
      dependsOnProfile: map['dependsOnProfile'] == null ? null : DependsOnProfile.fromMap((map['dependsOnProfile'] as Map).cast<String, dynamic>()),
      deployParametersMappingRuleProfile: map['deployParametersMappingRuleProfile'] == null ? null : AzureArcKubernetesDeployMappingRuleProfile.fromMap((map['deployParametersMappingRuleProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

