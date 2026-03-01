// ignore_for_file: unused_element, unnecessary_cast

import 'customer_managed_key_encryption.dart';

class Encryption {
  /// All Customer-managed key encryption properties for the resource.
  final CustomerManagedKeyEncryption? customerManagedKeyEncryption;

  /// Creates a new [Encryption].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
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
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : CustomerManagedKeyEncryption.fromMap((map['customerManagedKeyEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

