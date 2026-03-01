// ignore_for_file: unused_element, unnecessary_cast

import 'replica_modifications_response.dart';
import 'sse_kms_encrypted_objects_response.dart';

/// Definition of SourceSelectionCriteria
class SourceSelectionCriteriaResponse {
  /// A filter that you can specify for selection for modifications on replicas. A filter that you can specify for selection for modifications on replicas.
  final ReplicaModificationsResponse? replicaModifications;
  /// A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. A container for filter information for the selection of S3 objects encrypted with AWS KMS.
  final SseKmsEncryptedObjectsResponse? sseKmsEncryptedObjects;

  /// Creates a new [SourceSelectionCriteriaResponse].
  /// [replicaModifications] A filter that you can specify for selection for modifications on replicas. A filter that you can specify for selection for modifications on replicas.
  /// [sseKmsEncryptedObjects] A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. A container for filter information for the selection of S3 objects encrypted with AWS KMS.
  SourceSelectionCriteriaResponse({
    this.replicaModifications,
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaModifications': ?replicaModifications == null ? null : replicaModifications!.toMap(),
      'sseKmsEncryptedObjects': ?sseKmsEncryptedObjects == null ? null : sseKmsEncryptedObjects!.toMap(),
    };
  }

  factory SourceSelectionCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return SourceSelectionCriteriaResponse(
      replicaModifications: map['replicaModifications'] == null ? null : ReplicaModificationsResponse.fromMap((map['replicaModifications'] as Map).cast<String, dynamic>()),
      sseKmsEncryptedObjects: map['sseKmsEncryptedObjects'] == null ? null : SseKmsEncryptedObjectsResponse.fromMap((map['sseKmsEncryptedObjects'] as Map).cast<String, dynamic>()),
    );
  }
}

