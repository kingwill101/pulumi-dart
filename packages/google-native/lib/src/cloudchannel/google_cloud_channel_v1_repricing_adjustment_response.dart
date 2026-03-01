// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_percentage_adjustment_response.dart';

/// A type that represents the various adjustments you can apply to a bill.
class GoogleCloudChannelV1RepricingAdjustmentResponse {
  /// Flat markup or markdown on an entire bill.
  final GoogleCloudChannelV1PercentageAdjustmentResponse percentageAdjustment;

  /// Creates a new [GoogleCloudChannelV1RepricingAdjustmentResponse].
  /// [percentageAdjustment] Flat markup or markdown on an entire bill.
  GoogleCloudChannelV1RepricingAdjustmentResponse({
    required this.percentageAdjustment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageAdjustment': percentageAdjustment.toMap(),
    };
  }

  factory GoogleCloudChannelV1RepricingAdjustmentResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudChannelV1RepricingAdjustmentResponse(
      percentageAdjustment:
          GoogleCloudChannelV1PercentageAdjustmentResponse.fromMap(
            (map['percentageAdjustment'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
