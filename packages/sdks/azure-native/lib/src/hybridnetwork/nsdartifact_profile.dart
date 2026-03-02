// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource.dart';

/// Artifact profile properties.
class NSDArtifactProfile {
  /// Artifact name.
  final pulumi.Input<String>? artifactName;
  /// The artifact store resource id
  final pulumi.Input<ReferencedResource>? artifactStoreReference;
  /// Artifact version.
  final pulumi.Input<String>? artifactVersion;

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
      'artifactStoreReference': ?pulumi.Input.mapOptionalInputValue<ReferencedResource, Map<String, dynamic>>(artifactStoreReference, (value) => value.toMap()),
      'artifactVersion': ?artifactVersion,
    };
  }

  factory NSDArtifactProfile.fromMap(Map<String, dynamic> map) {
    return NSDArtifactProfile(
      artifactName: map['artifactName'] == null ? null : (map['artifactName']! as String).input(),
      artifactStoreReference: map['artifactStoreReference'] == null ? null : (ReferencedResource.fromMap((map['artifactStoreReference']! as Map).cast<String, dynamic>())).input(),
      artifactVersion: map['artifactVersion'] == null ? null : (map['artifactVersion']! as String).input(),
    );
  }
}

