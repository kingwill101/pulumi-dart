// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_customer_managed_key_encryption.dart';

/// Settings to encrypt a service
class Encryption {
  /// The encryption settings for the customer-managed key
  final pulumi.Input<EncryptionCustomerManagedKeyEncryption>? customerManagedKeyEncryption;

  /// Creates a new [Encryption].
  /// [customerManagedKeyEncryption] The encryption settings for the customer-managed key
  const Encryption({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<EncryptionCustomerManagedKeyEncryption, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      customerManagedKeyEncryption: (() { final guardedValue = map['customerManagedKeyEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionCustomerManagedKeyEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

