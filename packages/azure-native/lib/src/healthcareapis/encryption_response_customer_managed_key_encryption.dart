// ignore_for_file: unused_element, unnecessary_cast


/// The encryption settings for the customer-managed key
class EncryptionResponseCustomerManagedKeyEncryption {
  /// The URL of the key to use for encryption
  final String? keyEncryptionKeyUrl;

  /// Creates a new [EncryptionResponseCustomerManagedKeyEncryption].
  /// [keyEncryptionKeyUrl] The URL of the key to use for encryption
  EncryptionResponseCustomerManagedKeyEncryption({
    this.keyEncryptionKeyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
    };
  }

  factory EncryptionResponseCustomerManagedKeyEncryption.fromMap(Map<String, dynamic> map) {
    return EncryptionResponseCustomerManagedKeyEncryption(
      keyEncryptionKeyUrl: map['keyEncryptionKeyUrl'] == null ? null : map['keyEncryptionKeyUrl'] as String,
    );
  }
}

