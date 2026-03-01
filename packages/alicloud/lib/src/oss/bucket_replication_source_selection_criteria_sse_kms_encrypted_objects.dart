// ignore_for_file: unused_element, unnecessary_cast


class BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects {
  /// The status of the data replication task. Can be starting, doing and closing.
  final String? status;

  /// Creates a new [BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects].
  /// [status] The status of the data replication task. Can be starting, doing and closing.
  BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects.fromMap(Map<String, dynamic> map) {
    return BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

