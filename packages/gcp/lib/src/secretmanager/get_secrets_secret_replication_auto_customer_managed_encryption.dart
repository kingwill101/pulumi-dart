// ignore_for_file: unused_element, unnecessary_cast


class GetSecretsSecretReplicationAutoCustomerManagedEncryption {
  /// Describes the Cloud KMS encryption key that will be used to protect destination secret.
  final String kmsKeyName;

  /// Creates a new [GetSecretsSecretReplicationAutoCustomerManagedEncryption].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination secret.
  GetSecretsSecretReplicationAutoCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory GetSecretsSecretReplicationAutoCustomerManagedEncryption.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretReplicationAutoCustomerManagedEncryption(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}

