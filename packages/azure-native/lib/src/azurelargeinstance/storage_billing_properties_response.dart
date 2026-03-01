// ignore_for_file: unused_element, unnecessary_cast


/// Describes the billing related details of the AzureLargeStorageInstance.
class StorageBillingPropertiesResponse {
  /// the billing mode for the storage instance
  final String? billingMode;
  /// the SKU type that is provisioned
  final String? sku;

  /// Creates a new [StorageBillingPropertiesResponse].
  /// [billingMode] the billing mode for the storage instance
  /// [sku] the SKU type that is provisioned
  StorageBillingPropertiesResponse({
    this.billingMode,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingMode': ?billingMode,
      'sku': ?sku,
    };
  }

  factory StorageBillingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageBillingPropertiesResponse(
      billingMode: map['billingMode'] == null ? null : map['billingMode'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
    );
  }
}

