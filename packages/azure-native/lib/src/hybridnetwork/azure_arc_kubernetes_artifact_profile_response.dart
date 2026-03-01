// ignore_for_file: unused_element, unnecessary_cast

import 'helm_artifact_profile_response.dart';
import 'referenced_resource_response.dart';

/// Azure arc kubernetes artifact profile properties.
class AzureArcKubernetesArtifactProfileResponse {
  /// The reference to artifact store.
  final ReferencedResourceResponse? artifactStore;
  /// Helm artifact profile.
  final HelmArtifactProfileResponse? helmArtifactProfile;

  /// Creates a new [AzureArcKubernetesArtifactProfileResponse].
  /// [artifactStore] The reference to artifact store.
  /// [helmArtifactProfile] Helm artifact profile.
  AzureArcKubernetesArtifactProfileResponse({
    this.artifactStore,
    this.helmArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?artifactStore == null ? null : artifactStore!.toMap(),
      'helmArtifactProfile': ?helmArtifactProfile == null ? null : helmArtifactProfile!.toMap(),
    };
  }

  factory AzureArcKubernetesArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesArtifactProfileResponse(
      artifactStore: map['artifactStore'] == null ? null : ReferencedResourceResponse.fromMap((map['artifactStore'] as Map).cast<String, dynamic>()),
      helmArtifactProfile: map['helmArtifactProfile'] == null ? null : HelmArtifactProfileResponse.fromMap((map['helmArtifactProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

