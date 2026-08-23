// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_replication_configuration_rule_source_selection_criteria_sse_kms_encrypted_object.dart';

class BucketV2ReplicationConfigurationRuleSourceSelectionCriteria {
  /// Match SSE-KMS encrypted objects. See `sseKmsEncryptedObjects` Block below for details. If specified, `replicaKmsKeyId` in `destination` must be specified as well.
  final pulumi.Input<List<BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>>? sseKmsEncryptedObjects;

  /// Creates a new [BucketV2ReplicationConfigurationRuleSourceSelectionCriteria].
  /// [sseKmsEncryptedObjects] Match SSE-KMS encrypted objects. See `sseKmsEncryptedObjects` Block below for details. If specified, `replicaKmsKeyId` in `destination` must be specified as well.
  const BucketV2ReplicationConfigurationRuleSourceSelectionCriteria({
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sseKmsEncryptedObjects': ?pulumi.Input.mapOptionalInputValue<List<BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>, List<Map<String, dynamic>>>(sseKmsEncryptedObjects, (value) => pulumi.Input.encodeList<BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketV2ReplicationConfigurationRuleSourceSelectionCriteria.fromMap(Map<String, dynamic> map) {
    return BucketV2ReplicationConfigurationRuleSourceSelectionCriteria(
      sseKmsEncryptedObjects: (() { final guardedValue = map['sseKmsEncryptedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject>(guardedValue, (value) => BucketV2ReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObject.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
