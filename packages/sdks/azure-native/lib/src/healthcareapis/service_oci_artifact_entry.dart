// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Open Container Initiative (OCI) artifact.
class ServiceOciArtifactEntry {
  /// The artifact digest.
  final pulumi.Input<String>? digest;
  /// The artifact name.
  final pulumi.Input<String>? imageName;
  /// The Azure Container Registry login server.
  final pulumi.Input<String>? loginServer;

  /// Creates a new [ServiceOciArtifactEntry].
  /// [digest] The artifact digest.
  /// [imageName] The artifact name.
  /// [loginServer] The Azure Container Registry login server.
  ServiceOciArtifactEntry({
    this.digest,
    this.imageName,
    this.loginServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'imageName': ?imageName,
      'loginServer': ?loginServer,
    };
  }

  factory ServiceOciArtifactEntry.fromMap(Map<String, dynamic> map) {
    return ServiceOciArtifactEntry(
      digest: map['digest'] == null ? null : (map['digest'] as String).input(),
      imageName: map['imageName'] == null ? null : (map['imageName'] as String).input(),
      loginServer: map['loginServer'] == null ? null : (map['loginServer'] as String).input(),
    );
  }
}

