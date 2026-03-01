// ignore_for_file: unused_element, unnecessary_cast


/// Describes the billing related details of the AzureBareMetalStorageInstance.
class StorageBillingProperties {
  /// the SKU type that is provisioned
  final String? azureBareMetalStorageInstanceSize;
  /// the billing mode for the storage instance
  final String? billingMode;

  /// Creates a new [StorageBillingProperties].
  /// [azureBareMetalStorageInstanceSize] the SKU type that is provisioned
  /// [billingMode] the billing mode for the storage instance
  StorageBillingProperties({
    this.azureBareMetalStorageInstanceSize,
    this.billingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBareMetalStorageInstanceSize': ?azureBareMetalStorageInstanceSize,
      'billingMode': ?billingMode,
    };
  }

  factory StorageBillingProperties.fromMap(Map<String, dynamic> map) {
    return StorageBillingProperties(
      azureBareMetalStorageInstanceSize: map['azureBareMetalStorageInstanceSize'] == null ? null : map['azureBareMetalStorageInstanceSize'] as String,
      billingMode: map['billingMode'] == null ? null : map['billingMode'] as String,
    );
  }
}

