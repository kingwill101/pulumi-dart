// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects {
  /// The status of the data replication task. Can be starting, doing and closing.
  final pulumi.Input<String>? status;

  /// Creates a new [BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects].
  /// [status] The status of the data replication task. Can be starting, doing and closing.
  BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects({this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': ?status};
  }

  factory BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjects(
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
