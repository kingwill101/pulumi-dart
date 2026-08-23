// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_kubernetes_artifact_profile_response.dart';
import 'azure_arc_kubernetes_deploy_mapping_rule_profile_response.dart';
import 'depends_on_profile_response.dart';

/// Azure arc kubernetes helm application configurations.
class AzureArcKubernetesHelmApplicationResponse {
  /// Azure arc kubernetes artifact profile.
  final pulumi.Input<AzureArcKubernetesArtifactProfileResponse>? artifactProfile;
  /// The artifact type.
  /// Expected value is 'HelmPackage'.
  final pulumi.Input<String> artifactType;
  /// Depends on profile definition.
  final pulumi.Input<DependsOnProfileResponse>? dependsOnProfile;
  /// Deploy mapping rule profile.
  final pulumi.Input<AzureArcKubernetesDeployMappingRuleProfileResponse>? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final pulumi.Input<String>? name;

  /// Creates a new [AzureArcKubernetesHelmApplicationResponse].
  /// [artifactProfile] Azure arc kubernetes artifact profile.
  /// [artifactType] The artifact type.
  /// [dependsOnProfile] Depends on profile definition.
  /// [deployParametersMappingRuleProfile] Deploy mapping rule profile.
  /// [name] The name of the network function application.
  const AzureArcKubernetesHelmApplicationResponse({
    this.artifactProfile,
    required this.artifactType,
    this.dependsOnProfile,
    this.deployParametersMappingRuleProfile,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactProfile': ?pulumi.Input.mapOptionalInputValue<AzureArcKubernetesArtifactProfileResponse, Map<String, dynamic>>(artifactProfile, (value) => value.toMap()),
      'artifactType': artifactType,
      'dependsOnProfile': ?pulumi.Input.mapOptionalInputValue<DependsOnProfileResponse, Map<String, dynamic>>(dependsOnProfile, (value) => value.toMap()),
      'deployParametersMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<AzureArcKubernetesDeployMappingRuleProfileResponse, Map<String, dynamic>>(deployParametersMappingRuleProfile, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory AzureArcKubernetesHelmApplicationResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesHelmApplicationResponse(
      artifactProfile: (() { final guardedValue = map['artifactProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureArcKubernetesArtifactProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      artifactType: pulumi.Input.fromValue(map['artifactType'] as String),
      dependsOnProfile: (() { final guardedValue = map['dependsOnProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DependsOnProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deployParametersMappingRuleProfile: (() { final guardedValue = map['deployParametersMappingRuleProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureArcKubernetesDeployMappingRuleProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
