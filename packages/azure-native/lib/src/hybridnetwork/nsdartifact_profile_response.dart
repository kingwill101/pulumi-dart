// ignore_for_file: unused_element, unnecessary_cast

import 'referenced_resource_response.dart';

/// Artifact profile properties.
class NSDArtifactProfileResponse {
  /// Artifact name.
  final String? artifactName;
  /// The artifact store resource id
  final ReferencedResourceResponse? artifactStoreReference;
  /// Artifact version.
  final String? artifactVersion;

  /// Creates a new [NSDArtifactProfileResponse].
  /// [artifactName] Artifact name.
  /// [artifactStoreReference] The artifact store resource id
  /// [artifactVersion] Artifact version.
  NSDArtifactProfileResponse({
    this.artifactName,
    this.artifactStoreReference,
    this.artifactVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': ?artifactName,
      'artifactStoreReference': ?artifactStoreReference == null ? null : artifactStoreReference!.toMap(),
      'artifactVersion': ?artifactVersion,
    };
  }

  factory NSDArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return NSDArtifactProfileResponse(
      artifactName: map['artifactName'] == null ? null : map['artifactName'] as String,
      artifactStoreReference: map['artifactStoreReference'] == null ? null : ReferencedResourceResponse.fromMap((map['artifactStoreReference'] as Map).cast<String, dynamic>()),
      artifactVersion: map['artifactVersion'] == null ? null : map['artifactVersion'] as String,
    );
  }
}

