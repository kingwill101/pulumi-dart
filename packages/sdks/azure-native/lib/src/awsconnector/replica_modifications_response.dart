// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ReplicaModifications
class ReplicaModificationsResponse {
  /// Specifies whether Amazon S3 replicates modifications on replicas.  *Allowed values*: ``Enabled`` | ``Disabled``
  final pulumi.Input<String?>? status;

  /// Creates a new [ReplicaModificationsResponse].
  /// [status] Specifies whether Amazon S3 replicates modifications on replicas.  *Allowed values*: ``Enabled`` | ``Disabled``
  const ReplicaModificationsResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory ReplicaModificationsResponse.fromMap(Map<String, dynamic> map) {
    return ReplicaModificationsResponse(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
