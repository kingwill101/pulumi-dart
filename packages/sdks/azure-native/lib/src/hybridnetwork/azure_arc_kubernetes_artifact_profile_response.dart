// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'helm_artifact_profile_response.dart';
import 'referenced_resource_response.dart';

/// Azure arc kubernetes artifact profile properties.
class AzureArcKubernetesArtifactProfileResponse {
  /// The reference to artifact store.
  final pulumi.Input<ReferencedResourceResponse>? artifactStore;
  /// Helm artifact profile.
  final pulumi.Input<HelmArtifactProfileResponse>? helmArtifactProfile;

  /// Creates a new [AzureArcKubernetesArtifactProfileResponse].
  /// [artifactStore] The reference to artifact store.
  /// [helmArtifactProfile] Helm artifact profile.
  AzureArcKubernetesArtifactProfileResponse({
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
      artifactStore: map['artifactStore'] == null ? null : (ReferencedResourceResponse.fromMap((map['artifactStore']! as Map).cast<String, dynamic>())).input(),
      helmArtifactProfile: map['helmArtifactProfile'] == null ? null : (HelmArtifactProfileResponse.fromMap((map['helmArtifactProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

