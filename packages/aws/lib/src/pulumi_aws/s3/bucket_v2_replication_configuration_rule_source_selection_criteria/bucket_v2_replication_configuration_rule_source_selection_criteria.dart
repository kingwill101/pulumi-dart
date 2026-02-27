// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_v2_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_object/bucket_v2_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_object.dart';

class BucketV2ReplicationConfigurationRuleSourceSelectionCriteria {
  /// Match SSE-KMS encrypted objects (documented below). If specified, `replica_kms_key_id`
  /// in `destination` must be specified as well.
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
      map['sseKmsEncryptedObjects'] = pulumi.Input.encodeList<
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
          : pulumi.Input.decodeList<
                  BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>(
              map['sseKmsEncryptedObjects'],
              (value) =>
                  BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
