// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_core_vhd_image_artifact_profile_response.dart';
import 'azure_core_vhd_image_deploy_mapping_rule_profile_response.dart';
import 'depends_on_profile_response.dart';

/// Azure core network function vhd application definition.
class AzureCoreNetworkFunctionVhdApplicationResponse {
  /// Azure vhd image artifact profile.
  final pulumi.Input<AzureCoreVhdImageArtifactProfileResponse?>? artifactProfile;
  /// The artifact type.
  /// Expected value is 'VhdImageFile'.
  final pulumi.Input<String> artifactType;
  /// Depends on profile definition.
  final pulumi.Input<DependsOnProfileResponse?>? dependsOnProfile;
  /// Deploy mapping rule profile.
  final pulumi.Input<AzureCoreVhdImageDeployMappingRuleProfileResponse?>? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final pulumi.Input<String?>? name;

  /// Creates a new [AzureCoreNetworkFunctionVhdApplicationResponse].
  /// [artifactProfile] Azure vhd image artifact profile.
  /// [artifactType] The artifact type.
  /// [dependsOnProfile] Depends on profile definition.
  /// [deployParametersMappingRuleProfile] Deploy mapping rule profile.
  /// [name] The name of the network function application.
  const AzureCoreNetworkFunctionVhdApplicationResponse({
    this.artifactProfile,
    required this.artifactType,
    this.dependsOnProfile,
    this.deployParametersMappingRuleProfile,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactProfile': ?pulumi.Input.mapOptionalInputValue<AzureCoreVhdImageArtifactProfileResponse, Map<String, dynamic>>(artifactProfile, (value) => value.toMap()),
      'artifactType': artifactType,
      'dependsOnProfile': ?pulumi.Input.mapOptionalInputValue<DependsOnProfileResponse, Map<String, dynamic>>(dependsOnProfile, (value) => value.toMap()),
      'deployParametersMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<AzureCoreVhdImageDeployMappingRuleProfileResponse, Map<String, dynamic>>(deployParametersMappingRuleProfile, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory AzureCoreNetworkFunctionVhdApplicationResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreNetworkFunctionVhdApplicationResponse(
      artifactProfile: (() { final guardedValue = map['artifactProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureCoreVhdImageArtifactProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      artifactType: pulumi.Input.fromValue(map['artifactType'] as String),
      dependsOnProfile: (() { final guardedValue = map['dependsOnProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DependsOnProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deployParametersMappingRuleProfile: (() { final guardedValue = map['deployParametersMappingRuleProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureCoreVhdImageDeployMappingRuleProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
