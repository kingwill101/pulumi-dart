// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_source_selection_criteria_sse_kms_encrypted_objects.dart';

class BucketReplicationSourceSelectionCriteria {
  /// Filter source objects encrypted by using SSE-KMS. See `sse_kms_encrypted_objects` below.
  final pulumi.Input<BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects>? sseKmsEncryptedObjects;

  /// Creates a new [BucketReplicationSourceSelectionCriteria].
  /// [sseKmsEncryptedObjects] Filter source objects encrypted by using SSE-KMS. See `sse_kms_encrypted_objects` below.
  const BucketReplicationSourceSelectionCriteria({
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sseKmsEncryptedObjects': ?pulumi.Input.mapOptionalInputValue<BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects, Map<String, dynamic>>(sseKmsEncryptedObjects, (value) => value.toMap()),
    };
  }

  factory BucketReplicationSourceSelectionCriteria.fromMap(Map<String, dynamic> map) {
    return BucketReplicationSourceSelectionCriteria(
      sseKmsEncryptedObjects: (() { final guardedValue = map['sseKmsEncryptedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

