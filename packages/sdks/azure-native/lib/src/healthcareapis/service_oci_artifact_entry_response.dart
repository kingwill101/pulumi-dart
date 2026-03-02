// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Open Container Initiative (OCI) artifact.
class ServiceOciArtifactEntryResponse {
  /// The artifact digest.
  final pulumi.Input<String>? digest;
  /// The artifact name.
  final pulumi.Input<String>? imageName;
  /// The Azure Container Registry login server.
  final pulumi.Input<String>? loginServer;

  /// Creates a new [ServiceOciArtifactEntryResponse].
  /// [digest] The artifact digest.
  /// [imageName] The artifact name.
  /// [loginServer] The Azure Container Registry login server.
  ServiceOciArtifactEntryResponse({
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

  factory ServiceOciArtifactEntryResponse.fromMap(Map<String, dynamic> map) {
    return ServiceOciArtifactEntryResponse(
      digest: map['digest'] == null ? null : (map['digest']! as String).input(),
      imageName: map['imageName'] == null ? null : (map['imageName']! as String).input(),
      loginServer: map['loginServer'] == null ? null : (map['loginServer']! as String).input(),
    );
  }
}

