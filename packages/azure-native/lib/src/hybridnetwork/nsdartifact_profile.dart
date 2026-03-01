// ignore_for_file: unused_element, unnecessary_cast

import 'referenced_resource.dart';

/// Artifact profile properties.
class NSDArtifactProfile {
  /// Artifact name.
  final String? artifactName;
  /// The artifact store resource id
  final ReferencedResource? artifactStoreReference;
  /// Artifact version.
  final String? artifactVersion;

  /// Creates a new [NSDArtifactProfile].
  /// [artifactName] Artifact name.
  /// [artifactStoreReference] The artifact store resource id
  /// [artifactVersion] Artifact version.
  NSDArtifactProfile({
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

  factory NSDArtifactProfile.fromMap(Map<String, dynamic> map) {
    return NSDArtifactProfile(
      artifactName: map['artifactName'] == null ? null : map['artifactName'] as String,
      artifactStoreReference: map['artifactStoreReference'] == null ? null : ReferencedResource.fromMap((map['artifactStoreReference'] as Map).cast<String, dynamic>()),
      artifactVersion: map['artifactVersion'] == null ? null : map['artifactVersion'] as String,
    );
  }
}

