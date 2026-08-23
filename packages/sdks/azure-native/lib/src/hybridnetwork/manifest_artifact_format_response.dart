// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Manifest artifact properties.
class ManifestArtifactFormatResponse {
  /// The artifact name
  final pulumi.Input<String>? artifactName;
  /// The artifact type.
  final pulumi.Input<String>? artifactType;
  /// The artifact version.
  final pulumi.Input<String>? artifactVersion;

  /// Creates a new [ManifestArtifactFormatResponse].
  /// [artifactName] The artifact name
  /// [artifactType] The artifact type.
  /// [artifactVersion] The artifact version.
  const ManifestArtifactFormatResponse({
    this.artifactName,
    this.artifactType,
    this.artifactVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': ?artifactName,
      'artifactType': ?artifactType,
      'artifactVersion': ?artifactVersion,
    };
  }

  factory ManifestArtifactFormatResponse.fromMap(Map<String, dynamic> map) {
    return ManifestArtifactFormatResponse(
      artifactName: (() { final guardedValue = map['artifactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactType: (() { final guardedValue = map['artifactType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactVersion: (() { final guardedValue = map['artifactVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
