// ignore_for_file: unused_element, unnecessary_cast

/// Service provisioned for an entitlement.
class GoogleCloudChannelV1ProvisionedServiceResponse {
  /// The product pertaining to the provisioning resource as specified in the Offer.
  final String productId;

  /// Provisioning ID of the entitlement. For Google Workspace, this is the underlying Subscription ID. For Google Cloud, this is the Billing Account ID of the billing subaccount.
  final String provisioningId;

  /// The SKU pertaining to the provisioning resource as specified in the Offer.
  final String skuId;

  /// Creates a new [GoogleCloudChannelV1ProvisionedServiceResponse].
  /// [productId] The product pertaining to the provisioning resource as specified in the Offer.
  /// [provisioningId] Provisioning ID of the entitlement. For Google Workspace, this is the underlying Subscription ID. For Google Cloud, this is the Billing Account ID of the billing subaccount.
  /// [skuId] The SKU pertaining to the provisioning resource as specified in the Offer.
  GoogleCloudChannelV1ProvisionedServiceResponse({
    required this.productId,
    required this.provisioningId,
    required this.skuId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['productId'] = productId;
    map['provisioningId'] = provisioningId;
    map['skuId'] = skuId;
    return map;
  }

  factory GoogleCloudChannelV1ProvisionedServiceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1ProvisionedServiceResponse(
      productId: map['productId'] as String,
      provisioningId: map['provisioningId'] as String,
      skuId: map['skuId'] as String,
    );
  }
}
