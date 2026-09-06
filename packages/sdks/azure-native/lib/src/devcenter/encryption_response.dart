// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_encryption_response.dart';

class EncryptionResponse {
  /// All Customer-managed key encryption properties for the resource.
  final pulumi.Input<CustomerManagedKeyEncryptionResponse?>? customerManagedKeyEncryption;

  /// Creates a new [EncryptionResponse].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  const EncryptionResponse({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<CustomerManagedKeyEncryptionResponse, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      customerManagedKeyEncryption: (() { final guardedValue = map['customerManagedKeyEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerManagedKeyEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
