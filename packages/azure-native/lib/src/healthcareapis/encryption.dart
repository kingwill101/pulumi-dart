// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_customer_managed_key_encryption.dart';

/// Settings to encrypt a service
class Encryption {
  /// The encryption settings for the customer-managed key
  final EncryptionCustomerManagedKeyEncryption? customerManagedKeyEncryption;

  /// Creates a new [Encryption].
  /// [customerManagedKeyEncryption] The encryption settings for the customer-managed key
  Encryption({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?customerManagedKeyEncryption == null ? null : customerManagedKeyEncryption!.toMap(),
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : EncryptionCustomerManagedKeyEncryption.fromMap((map['customerManagedKeyEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

