// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'helm_artifact_profile_response.dart';
import 'referenced_resource_response.dart';

/// Azure arc kubernetes artifact profile properties.
class AzureArcKubernetesArtifactProfileResponse {
  /// The reference to artifact store.
  final pulumi.Input<ReferencedResourceResponse?>? artifactStore;
  /// Helm artifact profile.
  final pulumi.Input<HelmArtifactProfileResponse?>? helmArtifactProfile;

  /// Creates a new [AzureArcKubernetesArtifactProfileResponse].
  /// [artifactStore] The reference to artifact store.
  /// [helmArtifactProfile] Helm artifact profile.
  const AzureArcKubernetesArtifactProfileResponse({
    this.artifactStore,
    this.helmArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?pulumi.Input.mapOptionalInputValue<ReferencedResourceResponse, Map<String, dynamic>>(artifactStore, (value) => value.toMap()),
      'helmArtifactProfile': ?pulumi.Input.mapOptionalInputValue<HelmArtifactProfileResponse, Map<String, dynamic>>(helmArtifactProfile, (value) => value.toMap()),
    };
  }

  factory AzureArcKubernetesArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesArtifactProfileResponse(
      artifactStore: (() { final guardedValue = map['artifactStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReferencedResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      helmArtifactProfile: (() { final guardedValue = map['helmArtifactProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HelmArtifactProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
