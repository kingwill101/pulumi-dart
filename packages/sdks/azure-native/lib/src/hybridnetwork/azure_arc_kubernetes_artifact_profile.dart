// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'helm_artifact_profile.dart';
import 'referenced_resource.dart';

/// Azure arc kubernetes artifact profile properties.
class AzureArcKubernetesArtifactProfile {
  /// The reference to artifact store.
  final pulumi.Input<ReferencedResource>? artifactStore;
  /// Helm artifact profile.
  final pulumi.Input<HelmArtifactProfile>? helmArtifactProfile;

  /// Creates a new [AzureArcKubernetesArtifactProfile].
  /// [artifactStore] The reference to artifact store.
  /// [helmArtifactProfile] Helm artifact profile.
  AzureArcKubernetesArtifactProfile({
    this.artifactStore,
    this.helmArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?pulumi.Input.mapOptionalInputValue<ReferencedResource, Map<String, dynamic>>(artifactStore, (value) => value.toMap()),
      'helmArtifactProfile': ?pulumi.Input.mapOptionalInputValue<HelmArtifactProfile, Map<String, dynamic>>(helmArtifactProfile, (value) => value.toMap()),
    };
  }

  factory AzureArcKubernetesArtifactProfile.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesArtifactProfile(
      artifactStore: map['artifactStore'] == null ? null : (ReferencedResource.fromMap((map['artifactStore'] as Map).cast<String, dynamic>())).input(),
      helmArtifactProfile: map['helmArtifactProfile'] == null ? null : (HelmArtifactProfile.fromMap((map['helmArtifactProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

