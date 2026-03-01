// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_response_customer_managed_key_encryption.dart';

/// Settings to encrypt a service
class EncryptionResponse {
  /// The encryption settings for the customer-managed key
  final EncryptionResponseCustomerManagedKeyEncryption? customerManagedKeyEncryption;

  /// Creates a new [EncryptionResponse].
  /// [customerManagedKeyEncryption] The encryption settings for the customer-managed key
  EncryptionResponse({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?customerManagedKeyEncryption == null ? null : customerManagedKeyEncryption!.toMap(),
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : EncryptionResponseCustomerManagedKeyEncryption.fromMap((map['customerManagedKeyEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

