// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_encryption.dart';

class Encryption {
  /// All Customer-managed key encryption properties for the resource.
  final pulumi.Input<CustomerManagedKeyEncryption?>? customerManagedKeyEncryption;

  /// Creates a new [Encryption].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  const Encryption({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<CustomerManagedKeyEncryption, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      customerManagedKeyEncryption: (() { final guardedValue = map['customerManagedKeyEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerManagedKeyEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
