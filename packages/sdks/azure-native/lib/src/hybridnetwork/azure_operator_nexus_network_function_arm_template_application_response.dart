// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_operator_nexus_arm_template_artifact_profile_response.dart';
import 'azure_operator_nexus_arm_template_deploy_mapping_rule_profile_response.dart';
import 'depends_on_profile_response.dart';

/// Azure Operator Distributed Services network function Template application definition.
class AzureOperatorNexusNetworkFunctionArmTemplateApplicationResponse {
  /// Azure Operator Distributed Services Template artifact profile.
  final pulumi.Input<AzureOperatorNexusArmTemplateArtifactProfileResponse>?
  artifactProfile;

  /// The artifact type.
  /// Expected value is 'ArmTemplate'.
  final pulumi.Input<String> artifactType;

  /// Depends on profile definition.
  final pulumi.Input<DependsOnProfileResponse>? dependsOnProfile;

  /// Deploy mapping rule profile.
  final pulumi.Input<
    AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse
  >?
  deployParametersMappingRuleProfile;

  /// The name of the network function application.
  final pulumi.Input<String>? name;

  /// Creates a new [AzureOperatorNexusNetworkFunctionArmTemplateApplicationResponse].
  /// [artifactProfile] Azure Operator Distributed Services Template artifact profile.
  /// [artifactType] The artifact type.
  /// [dependsOnProfile] Depends on profile definition.
  /// [deployParametersMappingRuleProfile] Deploy mapping rule profile.
  /// [name] The name of the network function application.
  AzureOperatorNexusNetworkFunctionArmTemplateApplicationResponse({
    this.artifactProfile,
    required this.artifactType,
    this.dependsOnProfile,
    this.deployParametersMappingRuleProfile,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactProfile':
          ?pulumi.Input.mapOptionalInputValue<
            AzureOperatorNexusArmTemplateArtifactProfileResponse,
            Map<String, dynamic>
          >(artifactProfile, (value) => value.toMap()),
      'artifactType': artifactType,
      'dependsOnProfile':
          ?pulumi.Input.mapOptionalInputValue<
            DependsOnProfileResponse,
            Map<String, dynamic>
          >(dependsOnProfile, (value) => value.toMap()),
      'deployParametersMappingRuleProfile':
          ?pulumi.Input.mapOptionalInputValue<
            AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse,
            Map<String, dynamic>
          >(deployParametersMappingRuleProfile, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory AzureOperatorNexusNetworkFunctionArmTemplateApplicationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureOperatorNexusNetworkFunctionArmTemplateApplicationResponse(
      artifactProfile: (() {
        final guardedValue = map['artifactProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureOperatorNexusArmTemplateArtifactProfileResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      artifactType: pulumi.Input.fromValue(map['artifactType'] as String),
      dependsOnProfile: (() {
        final guardedValue = map['dependsOnProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DependsOnProfileResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deployParametersMappingRuleProfile: (() {
        final guardedValue = map['deployParametersMappingRuleProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
