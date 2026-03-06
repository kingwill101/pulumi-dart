// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_modifications_response.dart';
import 'sse_kms_encrypted_objects_response.dart';

/// Definition of SourceSelectionCriteria
class SourceSelectionCriteriaResponse {
  /// A filter that you can specify for selection for modifications on replicas. A filter that you can specify for selection for modifications on replicas.
  final pulumi.Input<ReplicaModificationsResponse>? replicaModifications;
  /// A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. A container for filter information for the selection of S3 objects encrypted with AWS KMS.
  final pulumi.Input<SseKmsEncryptedObjectsResponse>? sseKmsEncryptedObjects;

  /// Creates a new [SourceSelectionCriteriaResponse].
  /// [replicaModifications] A filter that you can specify for selection for modifications on replicas. A filter that you can specify for selection for modifications on replicas.
  /// [sseKmsEncryptedObjects] A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. A container for filter information for the selection of S3 objects encrypted with AWS KMS.
  const SourceSelectionCriteriaResponse({
    this.replicaModifications,
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaModifications': ?pulumi.Input.mapOptionalInputValue<ReplicaModificationsResponse, Map<String, dynamic>>(replicaModifications, (value) => value.toMap()),
      'sseKmsEncryptedObjects': ?pulumi.Input.mapOptionalInputValue<SseKmsEncryptedObjectsResponse, Map<String, dynamic>>(sseKmsEncryptedObjects, (value) => value.toMap()),
    };
  }

  factory SourceSelectionCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return SourceSelectionCriteriaResponse(
      replicaModifications: (() { final guardedValue = map['replicaModifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicaModificationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sseKmsEncryptedObjects: (() { final guardedValue = map['sseKmsEncryptedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SseKmsEncryptedObjectsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

