// ignore_for_file: unused_element, unnecessary_cast


/// Applies the repricing configuration at the entitlement level.
class GoogleCloudChannelV1RepricingConfigEntitlementGranularityResponse {
  /// Resource name of the entitlement. Format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  final String entitlement;

  /// Creates a new [GoogleCloudChannelV1RepricingConfigEntitlementGranularityResponse].
  /// [entitlement] Resource name of the entitlement. Format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  GoogleCloudChannelV1RepricingConfigEntitlementGranularityResponse({
    required this.entitlement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entitlement': entitlement,
    };
  }

  factory GoogleCloudChannelV1RepricingConfigEntitlementGranularityResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingConfigEntitlementGranularityResponse(
      entitlement: map['entitlement'] as String,
    );
  }
}

