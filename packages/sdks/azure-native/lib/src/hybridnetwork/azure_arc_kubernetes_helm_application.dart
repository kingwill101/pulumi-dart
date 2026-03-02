// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_kubernetes_artifact_profile.dart';
import 'azure_arc_kubernetes_deploy_mapping_rule_profile.dart';
import 'depends_on_profile.dart';

/// Azure arc kubernetes helm application configurations.
class AzureArcKubernetesHelmApplication {
  /// Azure arc kubernetes artifact profile.
  final pulumi.Input<AzureArcKubernetesArtifactProfile>? artifactProfile;
  /// The artifact type.
  /// Expected value is 'HelmPackage'.
  final pulumi.Input<String> artifactType;
  /// Depends on profile definition.
  final pulumi.Input<DependsOnProfile>? dependsOnProfile;
  /// Deploy mapping rule profile.
  final pulumi.Input<AzureArcKubernetesDeployMappingRuleProfile>? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final pulumi.Input<String>? name;

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
      'artifactProfile': ?pulumi.Input.mapOptionalInputValue<AzureArcKubernetesArtifactProfile, Map<String, dynamic>>(artifactProfile, (value) => value.toMap()),
      'artifactType': artifactType,
      'dependsOnProfile': ?pulumi.Input.mapOptionalInputValue<DependsOnProfile, Map<String, dynamic>>(dependsOnProfile, (value) => value.toMap()),
      'deployParametersMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<AzureArcKubernetesDeployMappingRuleProfile, Map<String, dynamic>>(deployParametersMappingRuleProfile, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory AzureArcKubernetesHelmApplication.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesHelmApplication(
      artifactProfile: map['artifactProfile'] == null ? null : (AzureArcKubernetesArtifactProfile.fromMap((map['artifactProfile'] as Map).cast<String, dynamic>())).input(),
      artifactType: (map['artifactType'] as String).input(),
      dependsOnProfile: map['dependsOnProfile'] == null ? null : (DependsOnProfile.fromMap((map['dependsOnProfile'] as Map).cast<String, dynamic>())).input(),
      deployParametersMappingRuleProfile: map['deployParametersMappingRuleProfile'] == null ? null : (AzureArcKubernetesDeployMappingRuleProfile.fromMap((map['deployParametersMappingRuleProfile'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

