// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_artifact_store_encryption_key.dart';

class PipelineArtifactStore {
  /// The encryption key block AWS CodePipeline uses to encrypt the data in the artifact store, such as an AWS Key Management Service (AWS KMS) key. If you don't specify a key, AWS CodePipeline uses the default key for Amazon Simple Storage Service (Amazon S3). An `encryptionKey` block is documented below.
  final pulumi.Input<PipelineArtifactStoreEncryptionKey>? encryptionKey;
  /// The location where AWS CodePipeline stores artifacts for a pipeline; currently only `S3` is supported.
  final pulumi.Input<String> location;
  /// The region where the artifact store is located. Required for a cross-region CodePipeline, do not provide for a single-region CodePipeline.
  final pulumi.Input<String>? region;
  /// The type of the artifact store, such as Amazon S3
  final pulumi.Input<String> type;

  /// Creates a new [PipelineArtifactStore].
  /// [encryptionKey] The encryption key block AWS CodePipeline uses to encrypt the data in the artifact store, such as an AWS Key Management Service (AWS KMS) key. If you don't specify a key, AWS CodePipeline uses the default key for Amazon Simple Storage Service (Amazon S3). An `encryptionKey` block is documented below.
  /// [location] The location where AWS CodePipeline stores artifacts for a pipeline; currently only `S3` is supported.
  /// [region] The region where the artifact store is located. Required for a cross-region CodePipeline, do not provide for a single-region CodePipeline.
  /// [type] The type of the artifact store, such as Amazon S3
  const PipelineArtifactStore({
    this.encryptionKey,
    required this.location,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKey': ?pulumi.Input.mapOptionalInputValue<PipelineArtifactStoreEncryptionKey, Map<String, dynamic>>(encryptionKey, (value) => value.toMap()),
      'location': location,
      'region': ?region,
      'type': type,
    };
  }

  factory PipelineArtifactStore.fromMap(Map<String, dynamic> map) {
    return PipelineArtifactStore(
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineArtifactStoreEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
