// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_core_arm_template_artifact_profile_response.dart';
import 'azure_core_arm_template_deploy_mapping_rule_profile_response.dart';
import 'depends_on_profile_response.dart';

/// Azure core network function Template application definition.
class AzureCoreNetworkFunctionArmTemplateApplicationResponse {
  /// Azure template artifact profile.
  final pulumi.Input<AzureCoreArmTemplateArtifactProfileResponse>? artifactProfile;
  /// The artifact type.
  /// Expected value is 'ArmTemplate'.
  final pulumi.Input<String> artifactType;
  /// Depends on profile definition.
  final pulumi.Input<DependsOnProfileResponse>? dependsOnProfile;
  /// Deploy mapping rule profile.
  final pulumi.Input<AzureCoreArmTemplateDeployMappingRuleProfileResponse>? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final pulumi.Input<String>? name;

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
      'artifactProfile': ?pulumi.Input.mapOptionalInputValue<AzureCoreArmTemplateArtifactProfileResponse, Map<String, dynamic>>(artifactProfile, (value) => value.toMap()),
      'artifactType': artifactType,
      'dependsOnProfile': ?pulumi.Input.mapOptionalInputValue<DependsOnProfileResponse, Map<String, dynamic>>(dependsOnProfile, (value) => value.toMap()),
      'deployParametersMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<AzureCoreArmTemplateDeployMappingRuleProfileResponse, Map<String, dynamic>>(deployParametersMappingRuleProfile, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory AzureCoreNetworkFunctionArmTemplateApplicationResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreNetworkFunctionArmTemplateApplicationResponse(
      artifactProfile: map['artifactProfile'] == null ? null : (AzureCoreArmTemplateArtifactProfileResponse.fromMap((map['artifactProfile']! as Map).cast<String, dynamic>())).input(),
      artifactType: (map['artifactType'] as String).input(),
      dependsOnProfile: map['dependsOnProfile'] == null ? null : (DependsOnProfileResponse.fromMap((map['dependsOnProfile']! as Map).cast<String, dynamic>())).input(),
      deployParametersMappingRuleProfile: map['deployParametersMappingRuleProfile'] == null ? null : (AzureCoreArmTemplateDeployMappingRuleProfileResponse.fromMap((map['deployParametersMappingRuleProfile']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

