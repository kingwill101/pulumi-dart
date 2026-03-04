// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SseKmsEncryptedObjects
class SseKmsEncryptedObjects {
  /// Specifies whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
  final pulumi.Input<String>? status;

  /// Creates a new [SseKmsEncryptedObjects].
  /// [status] Specifies whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
  SseKmsEncryptedObjects({this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': ?status};
  }

  factory SseKmsEncryptedObjects.fromMap(Map<String, dynamic> map) {
    return SseKmsEncryptedObjects(
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
