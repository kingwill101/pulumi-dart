// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryAssociationS3RepositoryDetailCodeArtifact {
  final pulumi.Input<String>? buildArtifactsObjectKey;
  final pulumi.Input<String>? sourceCodeArtifactsObjectKey;

  /// Creates a new [RepositoryAssociationS3RepositoryDetailCodeArtifact].
  /// [buildArtifactsObjectKey] Optional.
  /// [sourceCodeArtifactsObjectKey] Optional.
  RepositoryAssociationS3RepositoryDetailCodeArtifact({
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
      buildArtifactsObjectKey: map['buildArtifactsObjectKey'] == null ? null : ((map['buildArtifactsObjectKey'] as String).input()).input(),
      sourceCodeArtifactsObjectKey: map['sourceCodeArtifactsObjectKey'] == null ? null : ((map['sourceCodeArtifactsObjectKey'] as String).input()).input(),
    );
  }
}

