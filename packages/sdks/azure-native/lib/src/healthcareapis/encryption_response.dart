// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response_customer_managed_key_encryption.dart';

/// Settings to encrypt a service
class EncryptionResponse {
  /// The encryption settings for the customer-managed key
  final pulumi.Input<EncryptionResponseCustomerManagedKeyEncryption>? customerManagedKeyEncryption;

  /// Creates a new [EncryptionResponse].
  /// [customerManagedKeyEncryption] The encryption settings for the customer-managed key
  const EncryptionResponse({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<EncryptionResponseCustomerManagedKeyEncryption, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      customerManagedKeyEncryption: (() { final guardedValue = map['customerManagedKeyEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionResponseCustomerManagedKeyEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

