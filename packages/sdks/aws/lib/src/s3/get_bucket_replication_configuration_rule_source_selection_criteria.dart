// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_source_selection_criteria_replica_modification.dart';
import 'get_bucket_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_object.dart';

class GetBucketReplicationConfigurationRuleSourceSelectionCriteria {
  /// Configuration block for selections for modifications on replicas. See `replicaModifications` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification>> replicaModifications;
  /// Configuration block for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. See `sseKmsEncryptedObjects` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>> sseKmsEncryptedObjects;

  /// Creates a new [GetBucketReplicationConfigurationRuleSourceSelectionCriteria].
  /// [replicaModifications] Configuration block for selections for modifications on replicas. See `replicaModifications` Block below.
  /// [sseKmsEncryptedObjects] Configuration block for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. See `sseKmsEncryptedObjects` Block below.
  const GetBucketReplicationConfigurationRuleSourceSelectionCriteria({
    required this.replicaModifications,
    required this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaModifications': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification>, List<Map<String, dynamic>>>(replicaModifications, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sseKmsEncryptedObjects': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>, List<Map<String, dynamic>>>(sseKmsEncryptedObjects, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBucketReplicationConfigurationRuleSourceSelectionCriteria.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleSourceSelectionCriteria(
      replicaModifications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification>(map['replicaModifications']!, (value) => GetBucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModification.fromMap((value as Map).cast<String, dynamic>()))),
      sseKmsEncryptedObjects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>(map['sseKmsEncryptedObjects']!, (value) => GetBucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
