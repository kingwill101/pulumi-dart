// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EncryptionConfiguration
class EncryptionConfigurationS3BucketResponse {
  /// Specifies the ID (Key ARN or Alias ARN) of the customer managed AWS KMS key stored in AWS Key Management Service (KMS) for the destination bucket. Amazon S3 uses this key to encrypt replica objects. Amazon S3 only supports symmetric encryption KMS keys. For more information, see [Asymmetric keys in KMS](https://docs.aws.amazon.com//kms/latest/developerguide/symmetric-asymmetric.html) in the *Key Management Service Developer Guide*.
  final pulumi.Input<String>? replicaKmsKeyID;

  /// Creates a new [EncryptionConfigurationS3BucketResponse].
  /// [replicaKmsKeyID] Specifies the ID (Key ARN or Alias ARN) of the customer managed AWS KMS key stored in AWS Key Management Service (KMS) for the destination bucket. Amazon S3 uses this key to encrypt replica objects. Amazon S3 only supports symmetric encryption KMS keys. For more information, see [Asymmetric keys in KMS](https://docs.aws.amazon.com//kms/latest/developerguide/symmetric-asymmetric.html) in the *Key Management Service Developer Guide*.
  const EncryptionConfigurationS3BucketResponse({
    this.replicaKmsKeyID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaKmsKeyID': ?replicaKmsKeyID,
    };
  }

  factory EncryptionConfigurationS3BucketResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigurationS3BucketResponse(
      replicaKmsKeyID: (() { final guardedValue = map['replicaKmsKeyID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
