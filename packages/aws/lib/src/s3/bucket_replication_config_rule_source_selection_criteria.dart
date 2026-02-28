// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_replication_config_rule_source_selection_criteria_replica_modifications.dart';
import 'bucket_replication_config_rule_source_selection_criteria_sse_kms_encrypted_objects.dart';

class BucketReplicationConfigRuleSourceSelectionCriteria {
  /// Configuration block that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when `filter` is specified), you can specify this element and set the status to `Enabled` to replicate modifications on replicas.
  final BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications?
      replicaModifications;

  /// Configuration block for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. If specified, `replica_kms_key_id` in `destination` `encryption_configuration` must be specified as well.
  final BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects?
      sseKmsEncryptedObjects;

  /// Creates a new [BucketReplicationConfigRuleSourceSelectionCriteria].
  /// [replicaModifications] Configuration block that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when `filter` is specified), you can specify this element and set the status to `Enabled` to replicate modifications on replicas.
  /// [sseKmsEncryptedObjects] Configuration block for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. If specified, `replica_kms_key_id` in `destination` `encryption_configuration` must be specified as well.
  BucketReplicationConfigRuleSourceSelectionCriteria({
    this.replicaModifications,
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final replicaModificationsValue = replicaModifications;
    if (replicaModificationsValue != null) {
      map['replicaModifications'] = replicaModificationsValue.toMap();
    }
    final sseKmsEncryptedObjectsValue = sseKmsEncryptedObjects;
    if (sseKmsEncryptedObjectsValue != null) {
      map['sseKmsEncryptedObjects'] = sseKmsEncryptedObjectsValue.toMap();
    }
    return map;
  }

  factory BucketReplicationConfigRuleSourceSelectionCriteria.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleSourceSelectionCriteria(
      replicaModifications: map['replicaModifications'] == null
          ? null
          : BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications
              .fromMap(
                  (map['replicaModifications'] as Map).cast<String, dynamic>()),
      sseKmsEncryptedObjects: map['sseKmsEncryptedObjects'] == null
          ? null
          : BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects
              .fromMap((map['sseKmsEncryptedObjects'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
