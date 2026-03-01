// ignore_for_file: unused_element, unnecessary_cast

class GetRegionalSecretsSecretCustomerManagedEncryption {
  /// Describes the Cloud KMS encryption key that will be used to protect destination secret.
  final String kmsKeyName;

  /// Creates a new [GetRegionalSecretsSecretCustomerManagedEncryption].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination secret.
  GetRegionalSecretsSecretCustomerManagedEncryption({required this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory GetRegionalSecretsSecretCustomerManagedEncryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionalSecretsSecretCustomerManagedEncryption(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
