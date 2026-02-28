// ignore_for_file: unused_element, unnecessary_cast

class PipelineArtifactStoreEncryptionKey {
  /// The KMS key ARN or ID
  final String id;

  /// The type of key; currently only `KMS` is supported
  final String type;

  /// Creates a new [PipelineArtifactStoreEncryptionKey].
  /// [id] The KMS key ARN or ID
  /// [type] The type of key; currently only `KMS` is supported
  PipelineArtifactStoreEncryptionKey({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    return map;
  }

  factory PipelineArtifactStoreEncryptionKey.fromMap(Map<String, dynamic> map) {
    return PipelineArtifactStoreEncryptionKey(
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}
