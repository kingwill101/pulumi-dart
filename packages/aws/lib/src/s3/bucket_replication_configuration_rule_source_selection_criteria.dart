// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_objects.dart';

class BucketReplicationConfigurationRuleSourceSelectionCriteria {
  /// Match SSE-KMS encrypted objects (documented below). If specified, `replica_kms_key_id`
  /// in `destination` must be specified as well.
  final BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects?
      sseKmsEncryptedObjects;

  /// Creates a new [BucketReplicationConfigurationRuleSourceSelectionCriteria].
  /// [sseKmsEncryptedObjects] Match SSE-KMS encrypted objects (documented below). If specified, `replica_kms_key_id`
  BucketReplicationConfigurationRuleSourceSelectionCriteria({
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sseKmsEncryptedObjectsValue = sseKmsEncryptedObjects;
    if (sseKmsEncryptedObjectsValue != null) {
      map['sseKmsEncryptedObjects'] = sseKmsEncryptedObjectsValue.toMap();
    }
    return map;
  }

  factory BucketReplicationConfigurationRuleSourceSelectionCriteria.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigurationRuleSourceSelectionCriteria(
      sseKmsEncryptedObjects: map['sseKmsEncryptedObjects'] == null
          ? null
          : BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects
              .fromMap((map['sseKmsEncryptedObjects'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
