// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_bucket_replication_configuration_rule_source_selection_criteria_replica_modification/get_bucket_replication_configuration_rule_source_selection_criteria_replica_modification.dart';
import '../get_bucket_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_object/get_bucket_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_object.dart';

class GetBucketReplicationConfigurationRuleSourceSelectionCriteria {
  final List<
          GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification>
      replicaModifications;
  final List<
          GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>
      sseKmsEncryptedObjects;

  GetBucketReplicationConfigurationRuleSourceSelectionCriteria({
    required this.replicaModifications,
    required this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicaModifications'] = Input.encodeList<
        GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification,
        Map<String, dynamic>>(replicaModifications, (value) => value.toMap());
    map['sseKmsEncryptedObjects'] = Input.encodeList<
        GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject,
        Map<String, dynamic>>(sseKmsEncryptedObjects, (value) => value.toMap());
    return map;
  }

  factory GetBucketReplicationConfigurationRuleSourceSelectionCriteria.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleSourceSelectionCriteria(
      replicaModifications: Input.decodeList<
              GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification>(
          map['replicaModifications'],
          (value) =>
              GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification
                  .fromMap((value as Map).cast<String, dynamic>())),
      sseKmsEncryptedObjects: Input.decodeList<
              GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>(
          map['sseKmsEncryptedObjects'],
          (value) =>
              GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
