// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_period_response.dart';

/// Renewal settings for renewable Offers.
class GoogleCloudChannelV1RenewalSettingsResponse {
  /// If false, the plan will be completed at the end date.
  final bool enableRenewal;

  /// Describes how frequently the reseller will be billed, such as once per month.
  final GoogleCloudChannelV1PeriodResponse paymentCycle;

  /// Describes how a reseller will be billed.
  final String paymentPlan;

  /// If true and enable_renewal = true, the unit (for example seats or licenses) will be set to the number of active units at renewal time.
  final bool resizeUnitCount;

  GoogleCloudChannelV1RenewalSettingsResponse({
    required this.enableRenewal,
    required this.paymentCycle,
    required this.paymentPlan,
    required this.resizeUnitCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableRenewal'] = enableRenewal;
    map['paymentCycle'] = paymentCycle.toMap();
    map['paymentPlan'] = paymentPlan;
    map['resizeUnitCount'] = resizeUnitCount;
    return map;
  }

  factory GoogleCloudChannelV1RenewalSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1RenewalSettingsResponse(
      enableRenewal: map['enableRenewal'] as bool,
      paymentCycle: GoogleCloudChannelV1PeriodResponse.fromMap(
          (map['paymentCycle'] as Map).cast<String, dynamic>()),
      paymentPlan: map['paymentPlan'] as String,
      resizeUnitCount: map['resizeUnitCount'] as bool,
    );
  }
}
