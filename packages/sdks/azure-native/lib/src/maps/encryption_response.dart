// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_response_customer_managed_key_encryption.dart';

/// All encryption configuration for a resource.
class EncryptionResponse {
  /// All Customer-managed key encryption properties for the resource.
  final EncryptionResponseCustomerManagedKeyEncryption? customerManagedKeyEncryption;
  /// (Optional) Discouraged to include in resource definition. Only needed where it is possible to disable platform (AKA infrastructure) encryption. Azure SQL TDE is an example of this. Values are enabled and disabled.
  final String? infrastructureEncryption;

  /// Creates a new [EncryptionResponse].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  /// [infrastructureEncryption] (Optional) Discouraged to include in resource definition. Only needed where it is possible to disable platform (AKA infrastructure) encryption. Azure SQL TDE is an example of this. Values are enabled and disabled.
  EncryptionResponse({
    this.customerManagedKeyEncryption,
    this.infrastructureEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?customerManagedKeyEncryption == null ? null : customerManagedKeyEncryption!.toMap(),
      'infrastructureEncryption': ?infrastructureEncryption,
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : EncryptionResponseCustomerManagedKeyEncryption.fromMap((map['customerManagedKeyEncryption'] as Map).cast<String, dynamic>()),
      infrastructureEncryption: map['infrastructureEncryption'] == null ? null : map['infrastructureEncryption'] as String,
    );
  }
}

