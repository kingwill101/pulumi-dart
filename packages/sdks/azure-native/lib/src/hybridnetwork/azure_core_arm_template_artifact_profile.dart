// ignore_for_file: unused_element, unnecessary_cast

import 'arm_template_artifact_profile.dart';
import 'referenced_resource.dart';

/// Azure template artifact profile properties.
class AzureCoreArmTemplateArtifactProfile {
  /// The reference to artifact store.
  final ReferencedResource? artifactStore;
  /// Template artifact profile.
  final ArmTemplateArtifactProfile? templateArtifactProfile;

  /// Creates a new [AzureCoreArmTemplateArtifactProfile].
  /// [artifactStore] The reference to artifact store.
  /// [templateArtifactProfile] Template artifact profile.
  AzureCoreArmTemplateArtifactProfile({
    this.artifactStore,
    this.templateArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?artifactStore == null ? null : artifactStore!.toMap(),
      'templateArtifactProfile': ?templateArtifactProfile == null ? null : templateArtifactProfile!.toMap(),
    };
  }

  factory AzureCoreArmTemplateArtifactProfile.fromMap(Map<String, dynamic> map) {
    return AzureCoreArmTemplateArtifactProfile(
      artifactStore: map['artifactStore'] == null ? null : ReferencedResource.fromMap((map['artifactStore'] as Map).cast<String, dynamic>()),
      templateArtifactProfile: map['templateArtifactProfile'] == null ? null : ArmTemplateArtifactProfile.fromMap((map['templateArtifactProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

