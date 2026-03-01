// ignore_for_file: unused_element, unnecessary_cast

import 'referenced_resource_response.dart';
import 'vhd_image_artifact_profile_response.dart';

/// Azure vhd artifact profile properties.
class AzureCoreVhdImageArtifactProfileResponse {
  /// The reference to artifact store.
  final ReferencedResourceResponse? artifactStore;
  /// Vhd artifact profile.
  final VhdImageArtifactProfileResponse? vhdArtifactProfile;

  /// Creates a new [AzureCoreVhdImageArtifactProfileResponse].
  /// [artifactStore] The reference to artifact store.
  /// [vhdArtifactProfile] Vhd artifact profile.
  AzureCoreVhdImageArtifactProfileResponse({
    this.artifactStore,
    this.vhdArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?artifactStore == null ? null : artifactStore!.toMap(),
      'vhdArtifactProfile': ?vhdArtifactProfile == null ? null : vhdArtifactProfile!.toMap(),
    };
  }

  factory AzureCoreVhdImageArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreVhdImageArtifactProfileResponse(
      artifactStore: map['artifactStore'] == null ? null : ReferencedResourceResponse.fromMap((map['artifactStore'] as Map).cast<String, dynamic>()),
      vhdArtifactProfile: map['vhdArtifactProfile'] == null ? null : VhdImageArtifactProfileResponse.fromMap((map['vhdArtifactProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

