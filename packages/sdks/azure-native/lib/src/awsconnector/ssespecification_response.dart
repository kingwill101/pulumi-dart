// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SSESpecification
class SSESpecificationResponse {
  /// The KMS key that should be used for the KMS encryption. To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter if the key is different from the default DynamoDB key ``alias/aws/dynamodb``.
  final String? kmsMasterKeyId;
  /// Indicates whether server-side encryption is done using an AWS managed key or an AWS owned key. If enabled (true), server-side encryption type is set to ``KMS`` and an AWS managed key is used (KMS charges apply). If disabled (false) or not specified, server-side encryption is set to AWS owned key.
  final bool? sseEnabled;
  /// Server-side encryption type. The only supported value is:  +   ``KMS`` - Server-side encryption that uses KMSlong. The key is stored in your account and is managed by KMS (KMS charges apply).
  final String? sseType;

  /// Creates a new [SSESpecificationResponse].
  /// [kmsMasterKeyId] The KMS key that should be used for the KMS encryption. To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter if the key is different from the default DynamoDB key ``alias/aws/dynamodb``.
  /// [sseEnabled] Indicates whether server-side encryption is done using an AWS managed key or an AWS owned key. If enabled (true), server-side encryption type is set to ``KMS`` and an AWS managed key is used (KMS charges apply). If disabled (false) or not specified, server-side encryption is set to AWS owned key.
  /// [sseType] Server-side encryption type. The only supported value is:  +   ``KMS`` - Server-side encryption that uses KMSlong. The key is stored in your account and is managed by KMS (KMS charges apply).
  SSESpecificationResponse({
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

  factory SSESpecificationResponse.fromMap(Map<String, dynamic> map) {
    return SSESpecificationResponse(
      kmsMasterKeyId: map['kmsMasterKeyId'] == null ? null : map['kmsMasterKeyId'] as String,
      sseEnabled: map['sseEnabled'] == null ? null : map['sseEnabled'] as bool,
      sseType: map['sseType'] == null ? null : map['sseType'] as String,
    );
  }
}

