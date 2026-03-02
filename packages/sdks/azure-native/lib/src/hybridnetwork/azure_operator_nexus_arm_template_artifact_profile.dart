// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_template_artifact_profile.dart';
import 'referenced_resource.dart';

/// Azure Operator Distributed Services vhd artifact profile properties.
class AzureOperatorNexusArmTemplateArtifactProfile {
  /// The reference to artifact store.
  final pulumi.Input<ReferencedResource>? artifactStore;
  /// Template artifact profile.
  final pulumi.Input<ArmTemplateArtifactProfile>? templateArtifactProfile;

  /// Creates a new [AzureOperatorNexusArmTemplateArtifactProfile].
  /// [artifactStore] The reference to artifact store.
  /// [templateArtifactProfile] Template artifact profile.
  AzureOperatorNexusArmTemplateArtifactProfile({
    this.artifactStore,
    this.templateArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?pulumi.Input.mapOptionalInputValue<ReferencedResource, Map<String, dynamic>>(artifactStore, (value) => value.toMap()),
      'templateArtifactProfile': ?pulumi.Input.mapOptionalInputValue<ArmTemplateArtifactProfile, Map<String, dynamic>>(templateArtifactProfile, (value) => value.toMap()),
    };
  }

  factory AzureOperatorNexusArmTemplateArtifactProfile.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusArmTemplateArtifactProfile(
      artifactStore: map['artifactStore'] == null ? null : (ReferencedResource.fromMap((map['artifactStore'] as Map).cast<String, dynamic>())).input(),
      templateArtifactProfile: map['templateArtifactProfile'] == null ? null : (ArmTemplateArtifactProfile.fromMap((map['templateArtifactProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

