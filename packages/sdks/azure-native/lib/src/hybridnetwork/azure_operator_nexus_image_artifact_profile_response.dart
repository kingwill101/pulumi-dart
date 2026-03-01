// ignore_for_file: unused_element, unnecessary_cast

import 'image_artifact_profile_response.dart';
import 'referenced_resource_response.dart';

/// Azure Operator Distributed Services image artifact profile properties.
class AzureOperatorNexusImageArtifactProfileResponse {
  /// The reference to artifact store.
  final ReferencedResourceResponse? artifactStore;
  /// Image artifact profile.
  final ImageArtifactProfileResponse? imageArtifactProfile;

  /// Creates a new [AzureOperatorNexusImageArtifactProfileResponse].
  /// [artifactStore] The reference to artifact store.
  /// [imageArtifactProfile] Image artifact profile.
  AzureOperatorNexusImageArtifactProfileResponse({
    this.artifactStore,
    this.imageArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?artifactStore == null ? null : artifactStore!.toMap(),
      'imageArtifactProfile': ?imageArtifactProfile == null ? null : imageArtifactProfile!.toMap(),
    };
  }

  factory AzureOperatorNexusImageArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusImageArtifactProfileResponse(
      artifactStore: map['artifactStore'] == null ? null : ReferencedResourceResponse.fromMap((map['artifactStore'] as Map).cast<String, dynamic>()),
      imageArtifactProfile: map['imageArtifactProfile'] == null ? null : ImageArtifactProfileResponse.fromMap((map['imageArtifactProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

