// ignore_for_file: unused_element, unnecessary_cast

import 'arm_template_artifact_profile.dart';
import 'referenced_resource.dart';

/// Azure Operator Distributed Services vhd artifact profile properties.
class AzureOperatorNexusArmTemplateArtifactProfile {
  /// The reference to artifact store.
  final ReferencedResource? artifactStore;
  /// Template artifact profile.
  final ArmTemplateArtifactProfile? templateArtifactProfile;

  /// Creates a new [AzureOperatorNexusArmTemplateArtifactProfile].
  /// [artifactStore] The reference to artifact store.
  /// [templateArtifactProfile] Template artifact profile.
  AzureOperatorNexusArmTemplateArtifactProfile({
    this.artifactStore,
    this.templateArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?artifactStore == null ? null : artifactStore!.toMap(),
      'templateArtifactProfile': ?templateArtifactProfile == null ? null : templateArtifactProfile!.toMap(),
    };
  }

  factory AzureOperatorNexusArmTemplateArtifactProfile.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusArmTemplateArtifactProfile(
      artifactStore: map['artifactStore'] == null ? null : ReferencedResource.fromMap((map['artifactStore'] as Map).cast<String, dynamic>()),
      templateArtifactProfile: map['templateArtifactProfile'] == null ? null : ArmTemplateArtifactProfile.fromMap((map['templateArtifactProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

