// ignore_for_file: unused_element, unnecessary_cast

class SecretReplicationAutoCustomerManagedEncryption {
  /// Describes the Cloud KMS encryption key that will be used to protect destination secret.
  final String kmsKeyName;

  SecretReplicationAutoCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory SecretReplicationAutoCustomerManagedEncryption.fromMap(
      Map<String, dynamic> map) {
    return SecretReplicationAutoCustomerManagedEncryption(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
