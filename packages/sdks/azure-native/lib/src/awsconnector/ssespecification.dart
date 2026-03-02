// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SSESpecification
class SSESpecification {
  /// The KMS key that should be used for the KMS encryption. To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter if the key is different from the default DynamoDB key ``alias/aws/dynamodb``.
  final pulumi.Input<String>? kmsMasterKeyId;
  /// Indicates whether server-side encryption is done using an AWS managed key or an AWS owned key. If enabled (true), server-side encryption type is set to ``KMS`` and an AWS managed key is used (KMS charges apply). If disabled (false) or not specified, server-side encryption is set to AWS owned key.
  final pulumi.Input<bool>? sseEnabled;
  /// Server-side encryption type. The only supported value is:  +   ``KMS`` - Server-side encryption that uses KMSlong. The key is stored in your account and is managed by KMS (KMS charges apply).
  final pulumi.Input<String>? sseType;

  /// Creates a new [SSESpecification].
  /// [kmsMasterKeyId] The KMS key that should be used for the KMS encryption. To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter if the key is different from the default DynamoDB key ``alias/aws/dynamodb``.
  /// [sseEnabled] Indicates whether server-side encryption is done using an AWS managed key or an AWS owned key. If enabled (true), server-side encryption type is set to ``KMS`` and an AWS managed key is used (KMS charges apply). If disabled (false) or not specified, server-side encryption is set to AWS owned key.
  /// [sseType] Server-side encryption type. The only supported value is:  +   ``KMS`` - Server-side encryption that uses KMSlong. The key is stored in your account and is managed by KMS (KMS charges apply).
  SSESpecification({
    this.kmsMasterKeyId,
    this.sseEnabled,
    this.sseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsMasterKeyId': ?kmsMasterKeyId,
      'sseEnabled': ?sseEnabled,
      'sseType': ?sseType,
    };
  }

  factory SSESpecification.fromMap(Map<String, dynamic> map) {
    return SSESpecification(
      kmsMasterKeyId: map['kmsMasterKeyId'] == null ? null : (map['kmsMasterKeyId'] as String).input(),
      sseEnabled: map['sseEnabled'] == null ? null : (map['sseEnabled'] as bool).input(),
      sseType: map['sseType'] == null ? null : (map['sseType'] as String).input(),
    );
  }
}

