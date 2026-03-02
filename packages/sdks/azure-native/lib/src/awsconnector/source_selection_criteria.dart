// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_modifications.dart';
import 'sse_kms_encrypted_objects.dart';

/// Definition of SourceSelectionCriteria
class SourceSelectionCriteria {
  /// A filter that you can specify for selection for modifications on replicas. A filter that you can specify for selection for modifications on replicas.
  final pulumi.Input<ReplicaModifications>? replicaModifications;
  /// A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. A container for filter information for the selection of S3 objects encrypted with AWS KMS.
  final pulumi.Input<SseKmsEncryptedObjects>? sseKmsEncryptedObjects;

  /// Creates a new [SourceSelectionCriteria].
  /// [replicaModifications] A filter that you can specify for selection for modifications on replicas. A filter that you can specify for selection for modifications on replicas.
  /// [sseKmsEncryptedObjects] A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. A container for filter information for the selection of S3 objects encrypted with AWS KMS.
  SourceSelectionCriteria({
    this.replicaModifications,
    this.sseKmsEncryptedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaModifications': ?pulumi.Input.mapOptionalInputValue<ReplicaModifications, Map<String, dynamic>>(replicaModifications, (value) => value.toMap()),
      'sseKmsEncryptedObjects': ?pulumi.Input.mapOptionalInputValue<SseKmsEncryptedObjects, Map<String, dynamic>>(sseKmsEncryptedObjects, (value) => value.toMap()),
    };
  }

  factory SourceSelectionCriteria.fromMap(Map<String, dynamic> map) {
    return SourceSelectionCriteria(
      replicaModifications: map['replicaModifications'] == null ? null : (ReplicaModifications.fromMap((map['replicaModifications'] as Map).cast<String, dynamic>())).input(),
      sseKmsEncryptedObjects: map['sseKmsEncryptedObjects'] == null ? null : (SseKmsEncryptedObjects.fromMap((map['sseKmsEncryptedObjects'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

