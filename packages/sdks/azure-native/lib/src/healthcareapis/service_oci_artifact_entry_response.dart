// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Open Container Initiative (OCI) artifact.
class ServiceOciArtifactEntryResponse {
  /// The artifact digest.
  final pulumi.Input<String?>? digest;
  /// The artifact name.
  final pulumi.Input<String?>? imageName;
  /// The Azure Container Registry login server.
  final pulumi.Input<String?>? loginServer;

  /// Creates a new [ServiceOciArtifactEntryResponse].
  /// [digest] The artifact digest.
  /// [imageName] The artifact name.
  /// [loginServer] The Azure Container Registry login server.
  const ServiceOciArtifactEntryResponse({
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
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginServer: (() { final guardedValue = map['loginServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
