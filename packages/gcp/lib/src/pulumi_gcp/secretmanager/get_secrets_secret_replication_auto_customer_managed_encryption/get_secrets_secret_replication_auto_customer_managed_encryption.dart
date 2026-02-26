// ignore_for_file: unused_element, unnecessary_cast

class GetSecretsSecretReplicationAutoCustomerManagedEncryption {
  /// Describes the Cloud KMS encryption key that will be used to protect destination secret.
  final String kmsKeyName;

  GetSecretsSecretReplicationAutoCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory GetSecretsSecretReplicationAutoCustomerManagedEncryption.fromMap(
      Map<String, dynamic> map) {
    return GetSecretsSecretReplicationAutoCustomerManagedEncryption(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
