// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SseKmsEncryptedObjects
class SseKmsEncryptedObjects {
  /// Specifies whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
  final String? status;

  /// Creates a new [SseKmsEncryptedObjects].
  /// [status] Specifies whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
  SseKmsEncryptedObjects({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory SseKmsEncryptedObjects.fromMap(Map<String, dynamic> map) {
    return SseKmsEncryptedObjects(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

