// ignore_for_file: unused_element, unnecessary_cast

import 'replica_modifications.dart';
import 'sse_kms_encrypted_objects.dart';

/// Definition of SourceSelectionCriteria
class SourceSelectionCriteria {
  /// A filter that you can specify for selection for modifications on replicas. A filter that you can specify for selection for modifications on replicas.
  final ReplicaModifications? replicaModifications;
  /// A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. A container for filter information for the selection of S3 objects encrypted with AWS KMS.
  final SseKmsEncryptedObjects? sseKmsEncryptedObjects;

  /// Creates a new [SourceSelectionCriteria].
  /// [replicaModifications] A filter that you can specify for selection for modifications on replicas. A filter that you can specify for selection for modifications on replicas.
  /// [sseKmsEncryptedObjects] A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. A container for filter information for the selection of S3 objects encrypted with AWS KMS.
  SourceSelectionCriteria({
    this.replicaModifications,
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaModifications': ?replicaModifications == null ? null : replicaModifications!.toMap(),
      'sseKmsEncryptedObjects': ?sseKmsEncryptedObjects == null ? null : sseKmsEncryptedObjects!.toMap(),
    };
  }

  factory SourceSelectionCriteria.fromMap(Map<String, dynamic> map) {
    return SourceSelectionCriteria(
      replicaModifications: map['replicaModifications'] == null ? null : ReplicaModifications.fromMap((map['replicaModifications'] as Map).cast<String, dynamic>()),
      sseKmsEncryptedObjects: map['sseKmsEncryptedObjects'] == null ? null : SseKmsEncryptedObjects.fromMap((map['sseKmsEncryptedObjects'] as Map).cast<String, dynamic>()),
    );
  }
}

