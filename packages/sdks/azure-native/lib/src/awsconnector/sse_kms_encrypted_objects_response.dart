// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SseKmsEncryptedObjects
class SseKmsEncryptedObjectsResponse {
  /// Specifies whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
  final pulumi.Input<String>? status;

  /// Creates a new [SseKmsEncryptedObjectsResponse].
  /// [status] Specifies whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
  SseKmsEncryptedObjectsResponse({this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': ?status};
  }

  factory SseKmsEncryptedObjectsResponse.fromMap(Map<String, dynamic> map) {
    return SseKmsEncryptedObjectsResponse(
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
