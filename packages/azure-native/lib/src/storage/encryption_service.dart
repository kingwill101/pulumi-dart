// ignore_for_file: unused_element, unnecessary_cast


/// A service that allows server-side encryption to be used.
class EncryptionService {
  /// A boolean indicating whether or not the service encrypts the data as it is stored. Encryption at rest is enabled by default today and cannot be disabled.
  final bool? enabled;
  /// Encryption key type to be used for the encryption service. 'Account' key type implies that an account-scoped encryption key will be used. 'Service' key type implies that a default service key is used.
  final String? keyType;

  /// Creates a new [EncryptionService].
  /// [enabled] A boolean indicating whether or not the service encrypts the data as it is stored. Encryption at rest is enabled by default today and cannot be disabled.
  /// [keyType] Encryption key type to be used for the encryption service. 'Account' key type implies that an account-scoped encryption key will be used. 'Service' key type implies that a default service key is used.
  EncryptionService({
    this.enabled,
    this.keyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'keyType': ?keyType,
    };
  }

  factory EncryptionService.fromMap(Map<String, dynamic> map) {
    return EncryptionService(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      keyType: map['keyType'] == null ? null : map['keyType'] as String,
    );
  }
}

