// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response_customer_managed_key_encryption.dart';

/// All encryption configuration for a resource.
class EncryptionResponse {
  /// All Customer-managed key encryption properties for the resource.
  final pulumi.Input<EncryptionResponseCustomerManagedKeyEncryption>? customerManagedKeyEncryption;
  /// (Optional) Discouraged to include in resource definition. Only needed where it is possible to disable platform (AKA infrastructure) encryption. Azure SQL TDE is an example of this. Values are enabled and disabled.
  final pulumi.Input<String>? infrastructureEncryption;

  /// Creates a new [EncryptionResponse].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  /// [infrastructureEncryption] (Optional) Discouraged to include in resource definition. Only needed where it is possible to disable platform (AKA infrastructure) encryption. Azure SQL TDE is an example of this. Values are enabled and disabled.
  const EncryptionResponse({
    this.customerManagedKeyEncryption,
    this.infrastructureEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<EncryptionResponseCustomerManagedKeyEncryption, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
      'infrastructureEncryption': ?infrastructureEncryption,
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      customerManagedKeyEncryption: (() { final guardedValue = map['customerManagedKeyEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionResponseCustomerManagedKeyEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureEncryption: (() { final guardedValue = map['infrastructureEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

