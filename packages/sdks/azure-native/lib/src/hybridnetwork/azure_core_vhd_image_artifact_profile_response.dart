// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource_response.dart';
import 'vhd_image_artifact_profile_response.dart';

/// Azure vhd artifact profile properties.
class AzureCoreVhdImageArtifactProfileResponse {
  /// The reference to artifact store.
  final pulumi.Input<ReferencedResourceResponse>? artifactStore;
  /// Vhd artifact profile.
  final pulumi.Input<VhdImageArtifactProfileResponse>? vhdArtifactProfile;

  /// Creates a new [AzureCoreVhdImageArtifactProfileResponse].
  /// [artifactStore] The reference to artifact store.
  /// [vhdArtifactProfile] Vhd artifact profile.
  const AzureCoreVhdImageArtifactProfileResponse({
    this.artifactStore,
    this.vhdArtifactProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStore': ?pulumi.Input.mapOptionalInputValue<ReferencedResourceResponse, Map<String, dynamic>>(artifactStore, (value) => value.toMap()),
      'vhdArtifactProfile': ?pulumi.Input.mapOptionalInputValue<VhdImageArtifactProfileResponse, Map<String, dynamic>>(vhdArtifactProfile, (value) => value.toMap()),
    };
  }

  factory AzureCoreVhdImageArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreVhdImageArtifactProfileResponse(
      artifactStore: (() { final guardedValue = map['artifactStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReferencedResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vhdArtifactProfile: (() { final guardedValue = map['vhdArtifactProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VhdImageArtifactProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

