// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ServerSideEncryptionByDefault
class ServerSideEncryptionByDefaultResponse {
  /// AWS Key Management Service (KMS) customer AWS KMS key ID to use for the default encryption. This parameter is allowed if and only if ``SSEAlgorithm`` is set to ``aws:kms`` or ``aws:kms:dsse``. You can specify the key ID, key alias, or the Amazon Resource Name (ARN) of the KMS key.  +  Key ID: ``1234abcd-12ab-34cd-56ef-1234567890ab``   +  Key ARN: ``arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab``   +  Key Alias: ``alias/alias-name``    If you use a key ID, you can run into a LogDestination undeliverable error when creating a VPC flow log.  If you are using encryption with cross-account or AWS service operations you must use a fully qualified KMS key ARN. For more information, see [Using encryption for cross-account operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html#bucket-encryption-update-bucket-policy).  Amazon S3 only supports symmetric encryption KMS keys. For more information, see [Asymmetric keys in KMS](https://docs.aws.amazon.com//kms/latest/developerguide/symmetric-asymmetric.html) in the *Key Management Service Developer Guide*.
  final pulumi.Input<String?>? kmsMasterKeyID;
  /// Server-side encryption algorithm to use for the default encryption.
  final pulumi.Input<String?>? sseAlgorithm;

  /// Creates a new [ServerSideEncryptionByDefaultResponse].
  /// [kmsMasterKeyID] AWS Key Management Service (KMS) customer AWS KMS key ID to use for the default encryption. This parameter is allowed if and only if ``SSEAlgorithm`` is set to ``aws:kms`` or ``aws:kms:dsse``. You can specify the key ID, key alias, or the Amazon Resource Name (ARN) of the KMS key.  +  Key ID: ``1234abcd-12ab-34cd-56ef-1234567890ab``   +  Key ARN: ``arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab``   +  Key Alias: ``alias/alias-name``    If you use a key ID, you can run into a LogDestination undeliverable error when creating a VPC flow log.  If you are using encryption with cross-account or AWS service operations you must use a fully qualified KMS key ARN. For more information, see [Using encryption for cross-account operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html#bucket-encryption-update-bucket-policy).  Amazon S3 only supports symmetric encryption KMS keys. For more information, see [Asymmetric keys in KMS](https://docs.aws.amazon.com//kms/latest/developerguide/symmetric-asymmetric.html) in the *Key Management Service Developer Guide*.
  /// [sseAlgorithm] Server-side encryption algorithm to use for the default encryption.
  const ServerSideEncryptionByDefaultResponse({
    this.kmsMasterKeyID,
    this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsMasterKeyID': ?kmsMasterKeyID,
      'sseAlgorithm': ?sseAlgorithm,
    };
  }

  factory ServerSideEncryptionByDefaultResponse.fromMap(Map<String, dynamic> map) {
    return ServerSideEncryptionByDefaultResponse(
      kmsMasterKeyID: (() { final guardedValue = map['kmsMasterKeyID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sseAlgorithm: (() { final guardedValue = map['sseAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
