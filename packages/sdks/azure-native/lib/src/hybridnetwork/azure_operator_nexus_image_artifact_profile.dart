// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_artifact_profile.dart';
import 'referenced_resource.dart';

/// Azure Operator Distributed Services image artifact profile properties.
class AzureOperatorNexusImageArtifactProfile {
  /// The reference to artifact store.
  final pulumi.Input<ReferencedResource>? artifactStore;
  /// Image artifact profile.
  final pulumi.Input<ImageArtifactProfile>? imageArtifactProfile;

  /// Creates a new [AzureOperatorNexusImageArtifactProfile].
  /// [artifactStore] The reference to artifact store.
  /// [imageArtifactProfile] Image artifact profile.
  AzureOperatorNexusImageArtifactProfile({
    this.artifactStore,
    this.imageArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?pulumi.Input.mapOptionalInputValue<ReferencedResource, Map<String, dynamic>>(artifactStore, (value) => value.toMap()),
      'imageArtifactProfile': ?pulumi.Input.mapOptionalInputValue<ImageArtifactProfile, Map<String, dynamic>>(imageArtifactProfile, (value) => value.toMap()),
    };
  }

  factory AzureOperatorNexusImageArtifactProfile.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusImageArtifactProfile(
      artifactStore: map['artifactStore'] == null ? null : (ReferencedResource.fromMap((map['artifactStore']! as Map).cast<String, dynamic>())).input(),
      imageArtifactProfile: map['imageArtifactProfile'] == null ? null : (ImageArtifactProfile.fromMap((map['imageArtifactProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

