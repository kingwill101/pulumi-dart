// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_encryption_properties.dart';

/// All encryption configuration for a resource.
class EncryptionProperties {
  /// All Customer-managed key encryption properties for the resource.
  final pulumi.Input<CustomerManagedKeyEncryptionProperties>? customerManagedKeyEncryption;

  /// Creates a new [EncryptionProperties].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  EncryptionProperties({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<CustomerManagedKeyEncryptionProperties, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
    };
  }

  factory EncryptionProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionProperties(
      customerManagedKeyEncryption: (() { final guardedValue = map['customerManagedKeyEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerManagedKeyEncryptionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

