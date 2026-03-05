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
      artifactName: (() { final guardedValue = map['artifactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactStoreReference: (() { final guardedValue = map['artifactStoreReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReferencedResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      artifactVersion: (() { final guardedValue = map['artifactVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

