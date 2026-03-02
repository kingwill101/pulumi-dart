// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_core_vhd_image_artifact_profile.dart';
import 'azure_core_vhd_image_deploy_mapping_rule_profile.dart';
import 'depends_on_profile.dart';

/// Azure core network function vhd application definition.
class AzureCoreNetworkFunctionVhdApplication {
  /// Azure vhd image artifact profile.
  final pulumi.Input<AzureCoreVhdImageArtifactProfile>? artifactProfile;
  /// The artifact type.
  /// Expected value is 'VhdImageFile'.
  final pulumi.Input<String> artifactType;
  /// Depends on profile definition.
  final pulumi.Input<DependsOnProfile>? dependsOnProfile;
  /// Deploy mapping rule profile.
  final pulumi.Input<AzureCoreVhdImageDeployMappingRuleProfile>? deployParametersMappingRuleProfile;
  /// The name of the network function application.
  final pulumi.Input<String>? name;

  /// Creates a new [AzureCoreNetworkFunctionVhdApplication].
  /// [artifactProfile] Azure vhd image artifact profile.
  /// [artifactType] The artifact type.
  /// [dependsOnProfile] Depends on profile definition.
  /// [deployParametersMappingRuleProfile] Deploy mapping rule profile.
  /// [name] The name of the network function application.
  AzureCoreNetworkFunctionVhdApplication({
    this.artifactProfile,
    required this.artifactType,
    this.dependsOnProfile,
    this.deployParametersMappingRuleProfile,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactProfile': ?pulumi.Input.mapOptionalInputValue<AzureCoreVhdImageArtifactProfile, Map<String, dynamic>>(artifactProfile, (value) => value.toMap()),
      'artifactType': artifactType,
      'dependsOnProfile': ?pulumi.Input.mapOptionalInputValue<DependsOnProfile, Map<String, dynamic>>(dependsOnProfile, (value) => value.toMap()),
      'deployParametersMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<AzureCoreVhdImageDeployMappingRuleProfile, Map<String, dynamic>>(deployParametersMappingRuleProfile, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory AzureCoreNetworkFunctionVhdApplication.fromMap(Map<String, dynamic> map) {
    return AzureCoreNetworkFunctionVhdApplication(
      artifactProfile: map['artifactProfile'] == null ? null : (AzureCoreVhdImageArtifactProfile.fromMap((map['artifactProfile']! as Map).cast<String, dynamic>())).input(),
      artifactType: (map['artifactType'] as String).input(),
      dependsOnProfile: map['dependsOnProfile'] == null ? null : (DependsOnProfile.fromMap((map['dependsOnProfile']! as Map).cast<String, dynamic>())).input(),
      deployParametersMappingRuleProfile: map['deployParametersMappingRuleProfile'] == null ? null : (AzureCoreVhdImageDeployMappingRuleProfile.fromMap((map['deployParametersMappingRuleProfile']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

