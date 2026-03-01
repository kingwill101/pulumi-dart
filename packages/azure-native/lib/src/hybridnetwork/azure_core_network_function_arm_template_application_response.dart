// ignore_for_file: unused_element, unnecessary_cast

import 'azure_core_arm_template_artifact_profile_response.dart';
import 'azure_core_arm_template_deploy_mapping_rule_profile_response.dart';
import 'depends_on_profile_response.dart';

/// Azure core network function Template application definition.
class AzureCoreNetworkFunctionArmTemplateApplicationResponse {
  /// Azure template artifact profile.
  final AzureCoreArmTemplateArtifactProfileResponse? artifactProfile;
  /// The artifact type.
  /// Expected value is 'ArmTemplate'.
  final String artifactType;
  /// Depends on profile definition.
  final DependsOnProfileResponse? dependsOnProfile;
  /// Deploy mapping rule profile.
  final AzureCoreArmTemplateDeployMappingRuleProfileResponse? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final String? name;

  /// Creates a new [AzureCoreNetworkFunctionArmTemplateApplicationResponse].
  /// [artifactProfile] Azure template artifact profile.
  /// [artifactType] The artifact type.
  /// [dependsOnProfile] Depends on profile definition.
  /// [deployParametersMappingRuleProfile] Deploy mapping rule profile.
  /// [name] The name of the network function application.
  AzureCoreNetworkFunctionArmTemplateApplicationResponse({
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

  factory AzureCoreNetworkFunctionArmTemplateApplicationResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreNetworkFunctionArmTemplateApplicationResponse(
      artifactProfile: map['artifactProfile'] == null ? null : AzureCoreArmTemplateArtifactProfileResponse.fromMap((map['artifactProfile'] as Map).cast<String, dynamic>()),
      artifactType: map['artifactType'] as String,
      dependsOnProfile: map['dependsOnProfile'] == null ? null : DependsOnProfileResponse.fromMap((map['dependsOnProfile'] as Map).cast<String, dynamic>()),
      deployParametersMappingRuleProfile: map['deployParametersMappingRuleProfile'] == null ? null : AzureCoreArmTemplateDeployMappingRuleProfileResponse.fromMap((map['deployParametersMappingRuleProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

