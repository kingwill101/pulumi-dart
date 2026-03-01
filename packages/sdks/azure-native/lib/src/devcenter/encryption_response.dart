// ignore_for_file: unused_element, unnecessary_cast

import 'customer_managed_key_encryption_response.dart';

class EncryptionResponse {
  /// All Customer-managed key encryption properties for the resource.
  final CustomerManagedKeyEncryptionResponse? customerManagedKeyEncryption;

  /// Creates a new [EncryptionResponse].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
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
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : CustomerManagedKeyEncryptionResponse.fromMap((map['customerManagedKeyEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

