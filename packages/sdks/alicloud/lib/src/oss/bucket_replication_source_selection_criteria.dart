// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_replication_source_selection_criteria_sse_kms_encrypted_objects.dart';

class BucketReplicationSourceSelectionCriteria {
  /// Filter source objects encrypted by using SSE-KMS. See `sse_kms_encrypted_objects` below.
  final BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects? sseKmsEncryptedObjects;

  /// Creates a new [BucketReplicationSourceSelectionCriteria].
  /// [sseKmsEncryptedObjects] Filter source objects encrypted by using SSE-KMS. See `sse_kms_encrypted_objects` below.
  BucketReplicationSourceSelectionCriteria({
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sseKmsEncryptedObjects': ?sseKmsEncryptedObjects == null ? null : sseKmsEncryptedObjects!.toMap(),
    };
  }

  factory BucketReplicationSourceSelectionCriteria.fromMap(Map<String, dynamic> map) {
    return BucketReplicationSourceSelectionCriteria(
      sseKmsEncryptedObjects: map['sseKmsEncryptedObjects'] == null ? null : BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects.fromMap((map['sseKmsEncryptedObjects'] as Map).cast<String, dynamic>()),
    );
  }
}

