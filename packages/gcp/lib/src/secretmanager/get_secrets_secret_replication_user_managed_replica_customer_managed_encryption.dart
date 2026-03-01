// ignore_for_file: unused_element, unnecessary_cast

class GetSecretsSecretReplicationUserManagedReplicaCustomerManagedEncryption {
  /// Describes the Cloud KMS encryption key that will be used to protect destination secret.
  final String kmsKeyName;

  /// Creates a new [GetSecretsSecretReplicationUserManagedReplicaCustomerManagedEncryption].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination secret.
  GetSecretsSecretReplicationUserManagedReplicaCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory GetSecretsSecretReplicationUserManagedReplicaCustomerManagedEncryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSecretsSecretReplicationUserManagedReplicaCustomerManagedEncryption(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
