// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'manifest_artifact_format_response.dart';

/// Artifact manifest properties.
class ArtifactManifestPropertiesFormatResponse {
  /// The artifact manifest state.
  final pulumi.Input<String> artifactManifestState;
  /// The artifacts list.
  final pulumi.Input<List<ManifestArtifactFormatResponse>>? artifacts;
  /// The provisioning state of the ArtifactManifest resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ArtifactManifestPropertiesFormatResponse].
  /// [artifactManifestState] The artifact manifest state.
  /// [artifacts] The artifacts list.
  /// [provisioningState] The provisioning state of the ArtifactManifest resource.
  ArtifactManifestPropertiesFormatResponse({
    required this.artifactManifestState,
    this.artifacts,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactManifestState': artifactManifestState,
      'artifacts': ?pulumi.Input.mapOptionalInputValue<List<ManifestArtifactFormatResponse>, List<Map<String, dynamic>>>(artifacts, (value) => pulumi.Input.encodeList<ManifestArtifactFormatResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
    };
  }

  factory ArtifactManifestPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactManifestPropertiesFormatResponse(
      artifactManifestState: (map['artifactManifestState'] as String).input(),
      artifacts: map['artifacts'] == null ? null : (pulumi.Input.decodeList<ManifestArtifactFormatResponse>(map['artifacts']!, (value) => ManifestArtifactFormatResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

