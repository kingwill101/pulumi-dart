// ignore_for_file: unused_element, unnecessary_cast

class GetBrokerEncryptionOption {
  /// Amazon Resource Name (ARN) of Key Management Service (KMS) Customer Master Key (CMK) to use for encryption at rest.
  final String kmsKeyId;

  /// Whether to enable an AWS-owned KMS CMK that is not in your account.
  final bool useAwsOwnedKey;

  GetBrokerEncryptionOption({
    required this.kmsKeyId,
    required this.useAwsOwnedKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyId'] = kmsKeyId;
    map['useAwsOwnedKey'] = useAwsOwnedKey;
    return map;
  }

  factory GetBrokerEncryptionOption.fromMap(Map<String, dynamic> map) {
    return GetBrokerEncryptionOption(
      kmsKeyId: map['kmsKeyId'] as String,
      useAwsOwnedKey: map['useAwsOwnedKey'] as bool,
    );
  }
}
