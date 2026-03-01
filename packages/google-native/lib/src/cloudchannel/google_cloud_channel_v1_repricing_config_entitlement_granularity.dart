// ignore_for_file: unused_element, unnecessary_cast

/// Applies the repricing configuration at the entitlement level.
class GoogleCloudChannelV1RepricingConfigEntitlementGranularity {
  /// Resource name of the entitlement. Format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  final String? entitlement;

  /// Creates a new [GoogleCloudChannelV1RepricingConfigEntitlementGranularity].
  /// [entitlement] Resource name of the entitlement. Format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  GoogleCloudChannelV1RepricingConfigEntitlementGranularity({this.entitlement});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entitlement': ?entitlement};
  }

  factory GoogleCloudChannelV1RepricingConfigEntitlementGranularity.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudChannelV1RepricingConfigEntitlementGranularity(
      entitlement: map['entitlement'] == null
          ? null
          : map['entitlement'] as String,
    );
  }
}
