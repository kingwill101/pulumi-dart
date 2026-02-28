// ignore_for_file: unused_element, unnecessary_cast

class RepositoryAssociationS3RepositoryDetailCodeArtifact {
  final String? buildArtifactsObjectKey;
  final String? sourceCodeArtifactsObjectKey;

  /// Creates a new [RepositoryAssociationS3RepositoryDetailCodeArtifact].
  /// [buildArtifactsObjectKey] Optional.
  /// [sourceCodeArtifactsObjectKey] Optional.
  RepositoryAssociationS3RepositoryDetailCodeArtifact({
    this.buildArtifactsObjectKey,
    this.sourceCodeArtifactsObjectKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildArtifactsObjectKeyValue = buildArtifactsObjectKey;
    if (buildArtifactsObjectKeyValue != null) {
      map['buildArtifactsObjectKey'] = buildArtifactsObjectKeyValue;
    }
    final sourceCodeArtifactsObjectKeyValue = sourceCodeArtifactsObjectKey;
    if (sourceCodeArtifactsObjectKeyValue != null) {
      map['sourceCodeArtifactsObjectKey'] = sourceCodeArtifactsObjectKeyValue;
    }
    return map;
  }

  factory RepositoryAssociationS3RepositoryDetailCodeArtifact.fromMap(
      Map<String, dynamic> map) {
    return RepositoryAssociationS3RepositoryDetailCodeArtifact(
      buildArtifactsObjectKey: map['buildArtifactsObjectKey'] == null
          ? null
          : map['buildArtifactsObjectKey'] as String,
      sourceCodeArtifactsObjectKey: map['sourceCodeArtifactsObjectKey'] == null
          ? null
          : map['sourceCodeArtifactsObjectKey'] as String,
    );
  }
}
