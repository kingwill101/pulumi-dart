// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'manifest_artifact_format.dart';

/// Artifact manifest properties.
class ArtifactManifestPropertiesFormat {
  /// The artifacts list.
  final pulumi.Input<List<ManifestArtifactFormat>>? artifacts;

  /// Creates a new [ArtifactManifestPropertiesFormat].
  /// [artifacts] The artifacts list.
  ArtifactManifestPropertiesFormat({
    this.artifacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifacts': ?pulumi.Input.mapOptionalInputValue<List<ManifestArtifactFormat>, List<Map<String, dynamic>>>(artifacts, (value) => pulumi.Input.encodeList<ManifestArtifactFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ArtifactManifestPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return ArtifactManifestPropertiesFormat(
      artifacts: map['artifacts'] == null ? null : (pulumi.Input.decodeList<ManifestArtifactFormat>(map['artifacts']!, (value) => ManifestArtifactFormat.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

