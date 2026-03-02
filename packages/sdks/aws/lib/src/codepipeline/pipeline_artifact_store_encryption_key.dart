// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineArtifactStoreEncryptionKey {
  /// The KMS key ARN or ID
  final pulumi.Input<String> id;
  /// The type of key; currently only `KMS` is supported
  final pulumi.Input<String> type;

  /// Creates a new [PipelineArtifactStoreEncryptionKey].
  /// [id] The KMS key ARN or ID
  /// [type] The type of key; currently only `KMS` is supported
  PipelineArtifactStoreEncryptionKey({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory PipelineArtifactStoreEncryptionKey.fromMap(Map<String, dynamic> map) {
    return PipelineArtifactStoreEncryptionKey(
      id: (map['id'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

