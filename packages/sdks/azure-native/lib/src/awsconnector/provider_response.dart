// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Provider
class ProviderResponse {
  /// <p>Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must be symmetric and created in the same Amazon Web Services Region as the cluster. If the KMS key was created in a different account, the <a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html'>IAM principal</a> must have access to the KMS key. For more information, see <a href='https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html'>Allowing users in other accounts to use a KMS key</a> in the <i>Key Management Service Developer Guide</i>.</p>
  final String? keyArn;

  /// Creates a new [ProviderResponse].
  /// [keyArn] <p>Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must be symmetric and created in the same Amazon Web Services Region as the cluster. If the KMS key was created in a different account, the <a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html'>IAM principal</a> must have access to the KMS key. For more information, see <a href='https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html'>Allowing users in other accounts to use a KMS key</a> in the <i>Key Management Service Developer Guide</i>.</p>
  ProviderResponse({
    this.keyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyArn': ?keyArn,
    };
  }

  factory ProviderResponse.fromMap(Map<String, dynamic> map) {
    return ProviderResponse(
      keyArn: map['keyArn'] == null ? null : map['keyArn'] as String,
    );
  }
}

