// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_objects/bucket_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_objects.dart';

class BucketReplicationConfigurationRuleSourceSelectionCriteria {
  /// Match SSE-KMS encrypted objects (documented below). If specified, <span pulumi-lang-nodejs="`replicaKmsKeyId`" pulumi-lang-dotnet="`ReplicaKmsKeyId`" pulumi-lang-go="`replicaKmsKeyId`" pulumi-lang-python="`replica_kms_key_id`" pulumi-lang-yaml="`replicaKmsKeyId`" pulumi-lang-java="`replicaKmsKeyId`">`replica_kms_key_id`</span>
  /// in <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> must be specified as well.
  final BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects?
      sseKmsEncryptedObjects;

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
