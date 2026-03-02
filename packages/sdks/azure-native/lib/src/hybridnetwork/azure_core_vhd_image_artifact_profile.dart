// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource.dart';
import 'vhd_image_artifact_profile.dart';

/// Azure vhd artifact profile properties.
class AzureCoreVhdImageArtifactProfile {
  /// The reference to artifact store.
  final pulumi.Input<ReferencedResource>? artifactStore;
  /// Vhd artifact profile.
  final pulumi.Input<VhdImageArtifactProfile>? vhdArtifactProfile;

  /// Creates a new [AzureCoreVhdImageArtifactProfile].
  /// [artifactStore] The reference to artifact store.
  /// [vhdArtifactProfile] Vhd artifact profile.
  AzureCoreVhdImageArtifactProfile({
    this.artifactStore,
    this.vhdArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?pulumi.Input.mapOptionalInputValue<ReferencedResource, Map<String, dynamic>>(artifactStore, (value) => value.toMap()),
      'vhdArtifactProfile': ?pulumi.Input.mapOptionalInputValue<VhdImageArtifactProfile, Map<String, dynamic>>(vhdArtifactProfile, (value) => value.toMap()),
    };
  }

  factory AzureCoreVhdImageArtifactProfile.fromMap(Map<String, dynamic> map) {
    return AzureCoreVhdImageArtifactProfile(
      artifactStore: map['artifactStore'] == null ? null : (ReferencedResource.fromMap((map['artifactStore']! as Map).cast<String, dynamic>())).input(),
      vhdArtifactProfile: map['vhdArtifactProfile'] == null ? null : (VhdImageArtifactProfile.fromMap((map['vhdArtifactProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

