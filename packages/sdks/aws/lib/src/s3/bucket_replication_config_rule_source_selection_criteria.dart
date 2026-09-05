// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_config_rule_source_selection_criteria_replica_modifications.dart';
import 'bucket_replication_config_rule_source_selection_criteria_sse_kms_encrypted_objects.dart';

class BucketReplicationConfigRuleSourceSelectionCriteria {
  /// Configuration block that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when `filter` is specified), you can specify this element and set the status to `Enabled` to replicate modifications on replicas.
  final pulumi.Input<BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications?>? replicaModifications;
  /// Configuration block for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. If specified, `replicaKmsKeyId` in `destination` `encryptionConfiguration` must be specified as well.
  final pulumi.Input<BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects?>? sseKmsEncryptedObjects;

  /// Creates a new [BucketReplicationConfigRuleSourceSelectionCriteria].
  /// [replicaModifications] Configuration block that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when `filter` is specified), you can specify this element and set the status to `Enabled` to replicate modifications on replicas.
  /// [sseKmsEncryptedObjects] Configuration block for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. If specified, `replicaKmsKeyId` in `destination` `encryptionConfiguration` must be specified as well.
  const BucketReplicationConfigRuleSourceSelectionCriteria({
    this.replicaModifications,
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaModifications': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications, Map<String, dynamic>>(replicaModifications, (value) => value.toMap()),
      'sseKmsEncryptedObjects': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects, Map<String, dynamic>>(sseKmsEncryptedObjects, (value) => value.toMap()),
    };
  }

  factory BucketReplicationConfigRuleSourceSelectionCriteria.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleSourceSelectionCriteria(
      replicaModifications: (() { final guardedValue = map['replicaModifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sseKmsEncryptedObjects: (() { final guardedValue = map['sseKmsEncryptedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
