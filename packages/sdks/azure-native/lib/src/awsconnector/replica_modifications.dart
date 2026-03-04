// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ReplicaModifications
class ReplicaModifications {
  /// Specifies whether Amazon S3 replicates modifications on replicas.  *Allowed values*: ``Enabled`` | ``Disabled``
  final pulumi.Input<String>? status;

  /// Creates a new [ReplicaModifications].
  /// [status] Specifies whether Amazon S3 replicates modifications on replicas.  *Allowed values*: ``Enabled`` | ``Disabled``
  ReplicaModifications({this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': ?status};
  }

  factory ReplicaModifications.fromMap(Map<String, dynamic> map) {
    return ReplicaModifications(
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
