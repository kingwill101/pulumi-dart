// ignore_for_file: unused_element, unnecessary_cast

import 'image_artifact_profile.dart';
import 'referenced_resource.dart';

/// Azure Operator Distributed Services image artifact profile properties.
class AzureOperatorNexusImageArtifactProfile {
  /// The reference to artifact store.
  final ReferencedResource? artifactStore;
  /// Image artifact profile.
  final ImageArtifactProfile? imageArtifactProfile;

  /// Creates a new [AzureOperatorNexusImageArtifactProfile].
  /// [artifactStore] The reference to artifact store.
  /// [imageArtifactProfile] Image artifact profile.
  AzureOperatorNexusImageArtifactProfile({
    this.artifactStore,
    this.imageArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?artifactStore == null ? null : artifactStore!.toMap(),
      'imageArtifactProfile': ?imageArtifactProfile == null ? null : imageArtifactProfile!.toMap(),
    };
  }

  factory AzureOperatorNexusImageArtifactProfile.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusImageArtifactProfile(
      artifactStore: map['artifactStore'] == null ? null : ReferencedResource.fromMap((map['artifactStore'] as Map).cast<String, dynamic>()),
      imageArtifactProfile: map['imageArtifactProfile'] == null ? null : ImageArtifactProfile.fromMap((map['imageArtifactProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

