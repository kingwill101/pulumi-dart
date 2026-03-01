// ignore_for_file: unused_element, unnecessary_cast


/// The encryption settings for the customer-managed key
class EncryptionCustomerManagedKeyEncryption {
  /// The URL of the key to use for encryption
  final String? keyEncryptionKeyUrl;

  /// Creates a new [EncryptionCustomerManagedKeyEncryption].
  /// [keyEncryptionKeyUrl] The URL of the key to use for encryption
  EncryptionCustomerManagedKeyEncryption({
    this.keyEncryptionKeyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
    };
  }

  factory EncryptionCustomerManagedKeyEncryption.fromMap(Map<String, dynamic> map) {
    return EncryptionCustomerManagedKeyEncryption(
      keyEncryptionKeyUrl: map['keyEncryptionKeyUrl'] == null ? null : map['keyEncryptionKeyUrl'] as String,
    );
  }
}

