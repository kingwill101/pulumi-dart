// ignore_for_file: unused_element, unnecessary_cast

import 'customer_managed_key_encryption_properties.dart';

/// All encryption configuration for a resource.
class EncryptionProperties {
  /// All Customer-managed key encryption properties for the resource.
  final CustomerManagedKeyEncryptionProperties? customerManagedKeyEncryption;

  /// Creates a new [EncryptionProperties].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  EncryptionProperties({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?customerManagedKeyEncryption == null ? null : customerManagedKeyEncryption!.toMap(),
    };
  }

  factory EncryptionProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionProperties(
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : CustomerManagedKeyEncryptionProperties.fromMap((map['customerManagedKeyEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

