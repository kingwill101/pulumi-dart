// ignore_for_file: unused_element, unnecessary_cast

import 'arm_template_artifact_profile_response.dart';
import 'referenced_resource_response.dart';

/// Azure template artifact profile properties.
class AzureCoreArmTemplateArtifactProfileResponse {
  /// The reference to artifact store.
  final ReferencedResourceResponse? artifactStore;
  /// Template artifact profile.
  final ArmTemplateArtifactProfileResponse? templateArtifactProfile;

  /// Creates a new [AzureCoreArmTemplateArtifactProfileResponse].
  /// [artifactStore] The reference to artifact store.
  /// [templateArtifactProfile] Template artifact profile.
  AzureCoreArmTemplateArtifactProfileResponse({
    this.artifactStore,
    this.templateArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?artifactStore == null ? null : artifactStore!.toMap(),
      'templateArtifactProfile': ?templateArtifactProfile == null ? null : templateArtifactProfile!.toMap(),
    };
  }

  factory AzureCoreArmTemplateArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreArmTemplateArtifactProfileResponse(
      artifactStore: map['artifactStore'] == null ? null : ReferencedResourceResponse.fromMap((map['artifactStore'] as Map).cast<String, dynamic>()),
      templateArtifactProfile: map['templateArtifactProfile'] == null ? null : ArmTemplateArtifactProfileResponse.fromMap((map['templateArtifactProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

