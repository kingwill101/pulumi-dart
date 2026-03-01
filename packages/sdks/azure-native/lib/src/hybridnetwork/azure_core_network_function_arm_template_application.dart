// ignore_for_file: unused_element, unnecessary_cast

import 'azure_core_arm_template_artifact_profile.dart';
import 'azure_core_arm_template_deploy_mapping_rule_profile.dart';
import 'depends_on_profile.dart';

/// Azure core network function Template application definition.
class AzureCoreNetworkFunctionArmTemplateApplication {
  /// Azure template artifact profile.
  final AzureCoreArmTemplateArtifactProfile? artifactProfile;
  /// The artifact type.
  /// Expected value is 'ArmTemplate'.
  final String artifactType;
  /// Depends on profile definition.
  final DependsOnProfile? dependsOnProfile;
  /// Deploy mapping rule profile.
  final AzureCoreArmTemplateDeployMappingRuleProfile? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final String? name;

  /// Creates a new [AzureCoreNetworkFunctionArmTemplateApplication].
  /// [artifactProfile] Azure template artifact profile.
  /// [artifactType] The artifact type.
  /// [dependsOnProfile] Depends on profile definition.
  /// [deployParametersMappingRuleProfile] Deploy mapping rule profile.
  /// [name] The name of the network function application.
  AzureCoreNetworkFunctionArmTemplateApplication({
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

  factory AzureCoreNetworkFunctionArmTemplateApplication.fromMap(Map<String, dynamic> map) {
    return AzureCoreNetworkFunctionArmTemplateApplication(
      artifactProfile: map['artifactProfile'] == null ? null : AzureCoreArmTemplateArtifactProfile.fromMap((map['artifactProfile'] as Map).cast<String, dynamic>()),
      artifactType: map['artifactType'] as String,
      dependsOnProfile: map['dependsOnProfile'] == null ? null : DependsOnProfile.fromMap((map['dependsOnProfile'] as Map).cast<String, dynamic>()),
      deployParametersMappingRuleProfile: map['deployParametersMappingRuleProfile'] == null ? null : AzureCoreArmTemplateDeployMappingRuleProfile.fromMap((map['deployParametersMappingRuleProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

