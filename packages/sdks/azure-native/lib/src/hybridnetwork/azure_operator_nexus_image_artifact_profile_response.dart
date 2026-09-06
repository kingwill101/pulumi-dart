// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_artifact_profile_response.dart';
import 'referenced_resource_response.dart';

/// Azure Operator Distributed Services image artifact profile properties.
class AzureOperatorNexusImageArtifactProfileResponse {
  /// The reference to artifact store.
  final pulumi.Input<ReferencedResourceResponse?>? artifactStore;
  /// Image artifact profile.
  final pulumi.Input<ImageArtifactProfileResponse?>? imageArtifactProfile;

  /// Creates a new [AzureOperatorNexusImageArtifactProfileResponse].
  /// [artifactStore] The reference to artifact store.
  /// [imageArtifactProfile] Image artifact profile.
  const AzureOperatorNexusImageArtifactProfileResponse({
    this.artifactStore,
    this.imageArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?pulumi.Input.mapOptionalInputValue<ReferencedResourceResponse, Map<String, dynamic>>(artifactStore, (value) => value.toMap()),
      'imageArtifactProfile': ?pulumi.Input.mapOptionalInputValue<ImageArtifactProfileResponse, Map<String, dynamic>>(imageArtifactProfile, (value) => value.toMap()),
    };
  }

  factory AzureOperatorNexusImageArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusImageArtifactProfileResponse(
      artifactStore: (() { final guardedValue = map['artifactStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReferencedResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageArtifactProfile: (() { final guardedValue = map['imageArtifactProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageArtifactProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
