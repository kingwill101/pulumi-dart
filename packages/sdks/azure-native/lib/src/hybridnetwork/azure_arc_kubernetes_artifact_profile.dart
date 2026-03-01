// ignore_for_file: unused_element, unnecessary_cast

import 'helm_artifact_profile.dart';
import 'referenced_resource.dart';

/// Azure arc kubernetes artifact profile properties.
class AzureArcKubernetesArtifactProfile {
  /// The reference to artifact store.
  final ReferencedResource? artifactStore;
  /// Helm artifact profile.
  final HelmArtifactProfile? helmArtifactProfile;

  /// Creates a new [AzureArcKubernetesArtifactProfile].
  /// [artifactStore] The reference to artifact store.
  /// [helmArtifactProfile] Helm artifact profile.
  AzureArcKubernetesArtifactProfile({
    this.artifactStore,
    this.helmArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?artifactStore == null ? null : artifactStore!.toMap(),
      'helmArtifactProfile': ?helmArtifactProfile == null ? null : helmArtifactProfile!.toMap(),
    };
  }

  factory AzureArcKubernetesArtifactProfile.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesArtifactProfile(
      artifactStore: map['artifactStore'] == null ? null : ReferencedResource.fromMap((map['artifactStore'] as Map).cast<String, dynamic>()),
      helmArtifactProfile: map['helmArtifactProfile'] == null ? null : HelmArtifactProfile.fromMap((map['helmArtifactProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

