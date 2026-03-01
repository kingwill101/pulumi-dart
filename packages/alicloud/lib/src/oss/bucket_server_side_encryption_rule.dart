// ignore_for_file: unused_element, unnecessary_cast


class BucketServerSideEncryptionRule {
  /// The algorithm used to encrypt objects. If this element is not specified, objects are encrypted with AES256. This element is valid only when the value of SSEAlgorithm is set to KMS. Valid values: `SM4`.
  final String? kmsDataEncryption;
  /// The alibaba cloud KMS master key ID used for the SSE-KMS encryption.
  final String? kmsMasterKeyId;
  /// The server-side encryption algorithm to use. Possible values: `AES256` and `KMS`.
  final String sseAlgorithm;

  /// Creates a new [BucketServerSideEncryptionRule].
  /// [kmsDataEncryption] The algorithm used to encrypt objects. If this element is not specified, objects are encrypted with AES256. This element is valid only when the value of SSEAlgorithm is set to KMS. Valid values: `SM4`.
  /// [kmsMasterKeyId] The alibaba cloud KMS master key ID used for the SSE-KMS encryption.
  /// [sseAlgorithm] The server-side encryption algorithm to use. Possible values: `AES256` and `KMS`.
  BucketServerSideEncryptionRule({
    this.kmsDataEncryption,
    this.kmsMasterKeyId,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsDataEncryption': ?kmsDataEncryption,
      'kmsMasterKeyId': ?kmsMasterKeyId,
      'sseAlgorithm': sseAlgorithm,
    };
  }

  factory BucketServerSideEncryptionRule.fromMap(Map<String, dynamic> map) {
    return BucketServerSideEncryptionRule(
      kmsDataEncryption: map['kmsDataEncryption'] == null ? null : map['kmsDataEncryption'] as String,
      kmsMasterKeyId: map['kmsMasterKeyId'] == null ? null : map['kmsMasterKeyId'] as String,
      sseAlgorithm: map['sseAlgorithm'] as String,
    );
  }
}

