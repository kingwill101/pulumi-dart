// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_encryption_properties_response.dart';

/// All encryption configuration for a resource.
class EncryptionPropertiesResponse {
  /// All Customer-managed key encryption properties for the resource.
  final pulumi.Input<CustomerManagedKeyEncryptionPropertiesResponse>?
  customerManagedKeyEncryption;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  EncryptionPropertiesResponse({this.customerManagedKeyEncryption});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption':
          ?pulumi.Input.mapOptionalInputValue<
            CustomerManagedKeyEncryptionPropertiesResponse,
            Map<String, dynamic>
          >(customerManagedKeyEncryption, (value) => value.toMap()),
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      customerManagedKeyEncryption: (() {
        final guardedValue = map['customerManagedKeyEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomerManagedKeyEncryptionPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
