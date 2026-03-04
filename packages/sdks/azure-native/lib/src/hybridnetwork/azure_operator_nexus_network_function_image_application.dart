// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_operator_nexus_image_artifact_profile.dart';
import 'azure_operator_nexus_image_deploy_mapping_rule_profile.dart';
import 'depends_on_profile.dart';

/// Azure Operator Distributed Services network function image application definition.
class AzureOperatorNexusNetworkFunctionImageApplication {
  /// Azure Operator Distributed Services image artifact profile.
  final pulumi.Input<AzureOperatorNexusImageArtifactProfile>? artifactProfile;

  /// The artifact type.
  /// Expected value is 'ImageFile'.
  final pulumi.Input<String> artifactType;

  /// Depends on profile definition.
  final pulumi.Input<DependsOnProfile>? dependsOnProfile;

  /// Deploy mapping rule profile.
  final pulumi.Input<AzureOperatorNexusImageDeployMappingRuleProfile>?
  deployParametersMappingRuleProfile;

  /// The name of the network function application.
  final pulumi.Input<String>? name;

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
      'artifactProfile':
          ?pulumi.Input.mapOptionalInputValue<
            AzureOperatorNexusImageArtifactProfile,
            Map<String, dynamic>
          >(artifactProfile, (value) => value.toMap()),
      'artifactType': artifactType,
      'dependsOnProfile':
          ?pulumi.Input.mapOptionalInputValue<
            DependsOnProfile,
            Map<String, dynamic>
          >(dependsOnProfile, (value) => value.toMap()),
      'deployParametersMappingRuleProfile':
          ?pulumi.Input.mapOptionalInputValue<
            AzureOperatorNexusImageDeployMappingRuleProfile,
            Map<String, dynamic>
          >(deployParametersMappingRuleProfile, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory AzureOperatorNexusNetworkFunctionImageApplication.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureOperatorNexusNetworkFunctionImageApplication(
      artifactProfile: (() {
        final guardedValue = map['artifactProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureOperatorNexusImageArtifactProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      artifactType: pulumi.Input.fromValue(map['artifactType'] as String),
      dependsOnProfile: (() {
        final guardedValue = map['dependsOnProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DependsOnProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deployParametersMappingRuleProfile: (() {
        final guardedValue = map['deployParametersMappingRuleProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureOperatorNexusImageDeployMappingRuleProfile.fromMap(
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
