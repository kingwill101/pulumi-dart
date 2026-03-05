// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationEncryptionConfiguration {
  /// The CMK ID used in SSE-KMS.
  ///
  /// `NOTE`: If the status of sse_kms_encrypted_objects is set to Enabled, you must specify the replica_kms_key_id.
  final pulumi.Input<String> replicaKmsKeyId;

  /// Creates a new [BucketReplicationEncryptionConfiguration].
  /// [replicaKmsKeyId] The CMK ID used in SSE-KMS.
  BucketReplicationEncryptionConfiguration({
    required this.replicaKmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaKmsKeyId': replicaKmsKeyId,
    };
  }

  factory BucketReplicationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketReplicationEncryptionConfiguration(
      replicaKmsKeyId: pulumi.Input.fromValue(map['replicaKmsKeyId'] as String),
    );
  }
}

