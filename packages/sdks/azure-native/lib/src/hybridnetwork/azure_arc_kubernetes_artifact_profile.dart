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
  const AzureArcKubernetesArtifactProfile({
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
      artifactStore: (() { final guardedValue = map['artifactStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReferencedResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      helmArtifactProfile: (() { final guardedValue = map['helmArtifactProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HelmArtifactProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
