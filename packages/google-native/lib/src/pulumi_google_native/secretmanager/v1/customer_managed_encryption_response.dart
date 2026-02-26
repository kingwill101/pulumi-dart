// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for encrypting secret payloads using customer-managed encryption keys (CMEK).
class CustomerManagedEncryptionResponse {
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads. For secrets using the UserManaged replication policy type, Cloud KMS CryptoKeys must reside in the same location as the replica location. For secrets using the Automatic replication policy type, Cloud KMS CryptoKeys must reside in `global`. The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final String kmsKeyName;

  CustomerManagedEncryptionResponse({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory CustomerManagedEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return CustomerManagedEncryptionResponse(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
