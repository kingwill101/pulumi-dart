// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_sku_group_condition_response.dart';

/// Represents the various repricing conditions you can use for a conditional override.
class GoogleCloudChannelV1RepricingConditionResponse {
  /// SKU Group condition for override.
  final GoogleCloudChannelV1SkuGroupConditionResponse skuGroupCondition;

  /// Creates a new [GoogleCloudChannelV1RepricingConditionResponse].
  /// [skuGroupCondition] SKU Group condition for override.
  GoogleCloudChannelV1RepricingConditionResponse({
    required this.skuGroupCondition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['skuGroupCondition'] = skuGroupCondition.toMap();
    return map;
  }

  factory GoogleCloudChannelV1RepricingConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingConditionResponse(
      skuGroupCondition: GoogleCloudChannelV1SkuGroupConditionResponse.fromMap(
          (map['skuGroupCondition'] as Map).cast<String, dynamic>()),
    );
  }
}
