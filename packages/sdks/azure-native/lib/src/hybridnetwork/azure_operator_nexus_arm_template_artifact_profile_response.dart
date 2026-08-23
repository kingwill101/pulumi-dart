// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_template_artifact_profile_response.dart';
import 'referenced_resource_response.dart';

/// Azure Operator Distributed Services vhd artifact profile properties.
class AzureOperatorNexusArmTemplateArtifactProfileResponse {
  /// The reference to artifact store.
  final pulumi.Input<ReferencedResourceResponse>? artifactStore;
  /// Template artifact profile.
  final pulumi.Input<ArmTemplateArtifactProfileResponse>? templateArtifactProfile;

  /// Creates a new [AzureOperatorNexusArmTemplateArtifactProfileResponse].
  /// [artifactStore] The reference to artifact store.
  /// [templateArtifactProfile] Template artifact profile.
  const AzureOperatorNexusArmTemplateArtifactProfileResponse({
    this.artifactStore,
    this.templateArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?pulumi.Input.mapOptionalInputValue<ReferencedResourceResponse, Map<String, dynamic>>(artifactStore, (value) => value.toMap()),
      'templateArtifactProfile': ?pulumi.Input.mapOptionalInputValue<ArmTemplateArtifactProfileResponse, Map<String, dynamic>>(templateArtifactProfile, (value) => value.toMap()),
    };
  }

  factory AzureOperatorNexusArmTemplateArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusArmTemplateArtifactProfileResponse(
      artifactStore: (() { final guardedValue = map['artifactStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReferencedResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateArtifactProfile: (() { final guardedValue = map['templateArtifactProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArmTemplateArtifactProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
