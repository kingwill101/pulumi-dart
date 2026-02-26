// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_replication_config_rule_source_selection_criteria_replica_modifications/bucket_replication_config_rule_source_selection_criteria_replica_modifications.dart';
import '../bucket_replication_config_rule_source_selection_criteria_sse_kms_encrypted_objects/bucket_replication_config_rule_source_selection_criteria_sse_kms_encrypted_objects.dart';

class BucketReplicationConfigRuleSourceSelectionCriteria {
  /// Configuration block that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> is specified), you can specify this element and set the status to `Enabled` to replicate modifications on replicas.
  final BucketReplicationConfigRuleSourceSelectionCriteriaReplicaModifications?
      replicaModifications;

  /// Configuration block for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. If specified, <span pulumi-lang-nodejs="`replicaKmsKeyId`" pulumi-lang-dotnet="`ReplicaKmsKeyId`" pulumi-lang-go="`replicaKmsKeyId`" pulumi-lang-python="`replica_kms_key_id`" pulumi-lang-yaml="`replicaKmsKeyId`" pulumi-lang-java="`replicaKmsKeyId`">`replica_kms_key_id`</span> in <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> <span pulumi-lang-nodejs="`encryptionConfiguration`" pulumi-lang-dotnet="`EncryptionConfiguration`" pulumi-lang-go="`encryptionConfiguration`" pulumi-lang-python="`encryption_configuration`" pulumi-lang-yaml="`encryptionConfiguration`" pulumi-lang-java="`encryptionConfiguration`">`encryption_configuration`</span> must be specified as well.
  final BucketReplicationConfigRuleSourceSelectionCriteriaSseKmsEncryptedObjects?
      sseKmsEncryptedObjects;

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
