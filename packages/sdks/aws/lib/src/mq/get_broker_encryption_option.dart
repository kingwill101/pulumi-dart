// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBrokerEncryptionOption {
  /// Amazon Resource Name (ARN) of Key Management Service (KMS) Customer Master Key (CMK) to use for encryption at rest.
  final pulumi.Input<String> kmsKeyId;
  /// Whether to enable an AWS-owned KMS CMK that is not in your account.
  final pulumi.Input<bool> useAwsOwnedKey;

  /// Creates a new [GetBrokerEncryptionOption].
  /// [kmsKeyId] Amazon Resource Name (ARN) of Key Management Service (KMS) Customer Master Key (CMK) to use for encryption at rest.
  /// [useAwsOwnedKey] Whether to enable an AWS-owned KMS CMK that is not in your account.
  const GetBrokerEncryptionOption({
    required this.kmsKeyId,
    required this.useAwsOwnedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': kmsKeyId,
      'useAwsOwnedKey': useAwsOwnedKey,
    };
  }

  factory GetBrokerEncryptionOption.fromMap(Map<String, dynamic> map) {
    return GetBrokerEncryptionOption(
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      useAwsOwnedKey: pulumi.Input.fromValue(map['useAwsOwnedKey'] as bool),
    );
  }
}

