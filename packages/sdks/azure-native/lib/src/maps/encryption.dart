// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_customer_managed_key_encryption.dart';

/// All encryption configuration for a resource.
class Encryption {
  /// All Customer-managed key encryption properties for the resource.
  final pulumi.Input<EncryptionCustomerManagedKeyEncryption>? customerManagedKeyEncryption;
  /// (Optional) Discouraged to include in resource definition. Only needed where it is possible to disable platform (AKA infrastructure) encryption. Azure SQL TDE is an example of this. Values are enabled and disabled.
  final pulumi.Input<String>? infrastructureEncryption;

  /// Creates a new [Encryption].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  /// [infrastructureEncryption] (Optional) Discouraged to include in resource definition. Only needed where it is possible to disable platform (AKA infrastructure) encryption. Azure SQL TDE is an example of this. Values are enabled and disabled.
  const Encryption({
    this.customerManagedKeyEncryption,
    this.infrastructureEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<EncryptionCustomerManagedKeyEncryption, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
      'infrastructureEncryption': ?infrastructureEncryption,
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      customerManagedKeyEncryption: (() { final guardedValue = map['customerManagedKeyEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionCustomerManagedKeyEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureEncryption: (() { final guardedValue = map['infrastructureEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

