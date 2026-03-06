// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryAssociationS3RepositoryDetailCodeArtifact {
  final pulumi.Input<String>? buildArtifactsObjectKey;
  final pulumi.Input<String>? sourceCodeArtifactsObjectKey;

  /// Creates a new [RepositoryAssociationS3RepositoryDetailCodeArtifact].
  /// [buildArtifactsObjectKey] Optional.
  /// [sourceCodeArtifactsObjectKey] Optional.
  const RepositoryAssociationS3RepositoryDetailCodeArtifact({
    this.buildArtifactsObjectKey,
    this.sourceCodeArtifactsObjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildArtifactsObjectKey': ?buildArtifactsObjectKey,
      'sourceCodeArtifactsObjectKey': ?sourceCodeArtifactsObjectKey,
    };
  }

  factory RepositoryAssociationS3RepositoryDetailCodeArtifact.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationS3RepositoryDetailCodeArtifact(
      buildArtifactsObjectKey: (() { final guardedValue = map['buildArtifactsObjectKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCodeArtifactsObjectKey: (() { final guardedValue = map['sourceCodeArtifactsObjectKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

