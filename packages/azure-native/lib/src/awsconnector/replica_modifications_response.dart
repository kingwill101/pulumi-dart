// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ReplicaModifications
class ReplicaModificationsResponse {
  /// Specifies whether Amazon S3 replicates modifications on replicas.  *Allowed values*: ``Enabled`` | ``Disabled``
  final String? status;

  /// Creates a new [ReplicaModificationsResponse].
  /// [status] Specifies whether Amazon S3 replicates modifications on replicas.  *Allowed values*: ``Enabled`` | ``Disabled``
  ReplicaModificationsResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory ReplicaModificationsResponse.fromMap(Map<String, dynamic> map) {
    return ReplicaModificationsResponse(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

