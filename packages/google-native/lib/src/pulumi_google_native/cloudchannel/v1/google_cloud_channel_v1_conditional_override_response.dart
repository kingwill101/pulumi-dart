// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_repricing_adjustment_response.dart';
import 'google_cloud_channel_v1_repricing_condition_response.dart';

/// Specifies the override to conditionally apply.
class GoogleCloudChannelV1ConditionalOverrideResponse {
  /// Information about the applied override's adjustment.
  final GoogleCloudChannelV1RepricingAdjustmentResponse adjustment;

  /// The RebillingBasis to use for the applied override. Shows the relative cost based on your repricing costs.
  final String rebillingBasis;

  /// Specifies the condition which, if met, will apply the override.
  final GoogleCloudChannelV1RepricingConditionResponse repricingCondition;

  GoogleCloudChannelV1ConditionalOverrideResponse({
    required this.adjustment,
    required this.rebillingBasis,
    required this.repricingCondition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adjustment'] = adjustment.toMap();
    map['rebillingBasis'] = rebillingBasis;
    map['repricingCondition'] = repricingCondition.toMap();
    return map;
  }

  factory GoogleCloudChannelV1ConditionalOverrideResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1ConditionalOverrideResponse(
      adjustment: GoogleCloudChannelV1RepricingAdjustmentResponse.fromMap(
          (map['adjustment'] as Map).cast<String, dynamic>()),
      rebillingBasis: map['rebillingBasis'] as String,
      repricingCondition:
          GoogleCloudChannelV1RepricingConditionResponse.fromMap(
              (map['repricingCondition'] as Map).cast<String, dynamic>()),
    );
  }
}
