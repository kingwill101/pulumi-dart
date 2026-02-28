// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_sku_group_condition.dart';

/// Represents the various repricing conditions you can use for a conditional override.
class GoogleCloudChannelV1RepricingCondition {
  /// SKU Group condition for override.
  final GoogleCloudChannelV1SkuGroupCondition? skuGroupCondition;

  /// Creates a new [GoogleCloudChannelV1RepricingCondition].
  /// [skuGroupCondition] SKU Group condition for override.
  GoogleCloudChannelV1RepricingCondition({
    this.skuGroupCondition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final skuGroupConditionValue = skuGroupCondition;
    if (skuGroupConditionValue != null) {
      map['skuGroupCondition'] = skuGroupConditionValue.toMap();
    }
    return map;
  }

  factory GoogleCloudChannelV1RepricingCondition.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingCondition(
      skuGroupCondition: map['skuGroupCondition'] == null
          ? null
          : GoogleCloudChannelV1SkuGroupCondition.fromMap(
              (map['skuGroupCondition'] as Map).cast<String, dynamic>()),
    );
  }
}
