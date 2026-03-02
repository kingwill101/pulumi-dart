// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource_response.dart';

/// Artifact profile properties.
class NSDArtifactProfileResponse {
  /// Artifact name.
  final pulumi.Input<String>? artifactName;
  /// The artifact store resource id
  final pulumi.Input<ReferencedResourceResponse>? artifactStoreReference;
  /// Artifact version.
  final pulumi.Input<String>? artifactVersion;

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
      'artifactStoreReference': ?pulumi.Input.mapOptionalInputValue<ReferencedResourceResponse, Map<String, dynamic>>(artifactStoreReference, (value) => value.toMap()),
      'artifactVersion': ?artifactVersion,
    };
  }

  factory NSDArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return NSDArtifactProfileResponse(
      artifactName: map['artifactName'] == null ? null : (map['artifactName'] as String).input(),
      artifactStoreReference: map['artifactStoreReference'] == null ? null : (ReferencedResourceResponse.fromMap((map['artifactStoreReference'] as Map).cast<String, dynamic>())).input(),
      artifactVersion: map['artifactVersion'] == null ? null : (map['artifactVersion'] as String).input(),
    );
  }
}

