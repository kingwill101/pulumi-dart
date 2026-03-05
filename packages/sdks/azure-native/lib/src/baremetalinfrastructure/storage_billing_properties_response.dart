// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the billing related details of the AzureBareMetalStorageInstance.
class StorageBillingPropertiesResponse {
  /// the SKU type that is provisioned
  final pulumi.Input<String>? azureBareMetalStorageInstanceSize;
  /// the billing mode for the storage instance
  final pulumi.Input<String>? billingMode;

  /// Creates a new [StorageBillingPropertiesResponse].
  /// [azureBareMetalStorageInstanceSize] the SKU type that is provisioned
  /// [billingMode] the billing mode for the storage instance
  StorageBillingPropertiesResponse({
    this.azureBareMetalStorageInstanceSize,
    this.billingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBareMetalStorageInstanceSize': ?azureBareMetalStorageInstanceSize,
      'billingMode': ?billingMode,
    };
  }

  factory StorageBillingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageBillingPropertiesResponse(
      azureBareMetalStorageInstanceSize: (() { final guardedValue = map['azureBareMetalStorageInstanceSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      billingMode: (() { final guardedValue = map['billingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

