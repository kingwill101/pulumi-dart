// ignore_for_file: unused_element, unnecessary_cast


class ClusterEncryptionConfigProvider {
  /// ARN of the Key Management Service (KMS) customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK. For more information, see [Allowing Users in Other Accounts to Use a CMK in the AWS Key Management Service Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html).
  final String keyArn;

  /// Creates a new [ClusterEncryptionConfigProvider].
  /// [keyArn] ARN of the Key Management Service (KMS) customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK. For more information, see [Allowing Users in Other Accounts to Use a CMK in the AWS Key Management Service Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html).
  ClusterEncryptionConfigProvider({
    required this.keyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyArn': keyArn,
    };
  }

  factory ClusterEncryptionConfigProvider.fromMap(Map<String, dynamic> map) {
    return ClusterEncryptionConfigProvider(
      keyArn: map['keyArn'] as String,
    );
  }
}

