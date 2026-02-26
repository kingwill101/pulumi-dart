// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_v2_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_object/bucket_v2_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_object.dart';

class BucketV2ReplicationConfigurationRuleSourceSelectionCriteria {
  /// Match SSE-KMS encrypted objects (documented below). If specified, <span pulumi-lang-nodejs="`replicaKmsKeyId`" pulumi-lang-dotnet="`ReplicaKmsKeyId`" pulumi-lang-go="`replicaKmsKeyId`" pulumi-lang-python="`replica_kms_key_id`" pulumi-lang-yaml="`replicaKmsKeyId`" pulumi-lang-java="`replicaKmsKeyId`">`replica_kms_key_id`</span>
  /// in <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> must be specified as well.
  final List<
          BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>?
      sseKmsEncryptedObjects;

  BucketV2ReplicationConfigurationRuleSourceSelectionCriteria({
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sseKmsEncryptedObjectsValue = sseKmsEncryptedObjects;
    if (sseKmsEncryptedObjectsValue != null) {
      map['sseKmsEncryptedObjects'] = Input.encodeList<
          BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject,
          Map<String,
              dynamic>>(sseKmsEncryptedObjectsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketV2ReplicationConfigurationRuleSourceSelectionCriteria.fromMap(
      Map<String, dynamic> map) {
    return BucketV2ReplicationConfigurationRuleSourceSelectionCriteria(
      sseKmsEncryptedObjects: map['sseKmsEncryptedObjects'] == null
          ? null
          : Input.decodeList<
                  BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>(
              map['sseKmsEncryptedObjects'],
              (value) =>
                  BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
