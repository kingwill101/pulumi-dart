// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The encryption settings for the customer-managed key
class EncryptionCustomerManagedKeyEncryption {
  /// The URL of the key to use for encryption
  final pulumi.Input<String?>? keyEncryptionKeyUrl;

  /// Creates a new [EncryptionCustomerManagedKeyEncryption].
  /// [keyEncryptionKeyUrl] The URL of the key to use for encryption
  const EncryptionCustomerManagedKeyEncryption({
    this.keyEncryptionKeyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
    };
  }

  factory EncryptionCustomerManagedKeyEncryption.fromMap(Map<String, dynamic> map) {
    return EncryptionCustomerManagedKeyEncryption(
      keyEncryptionKeyUrl: (() { final guardedValue = map['keyEncryptionKeyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
