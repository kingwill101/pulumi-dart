// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_percentage_adjustment.dart';

/// A type that represents the various adjustments you can apply to a bill.
class GoogleCloudChannelV1RepricingAdjustment {
  /// Flat markup or markdown on an entire bill.
  final GoogleCloudChannelV1PercentageAdjustment? percentageAdjustment;

  /// Creates a new [GoogleCloudChannelV1RepricingAdjustment].
  /// [percentageAdjustment] Flat markup or markdown on an entire bill.
  GoogleCloudChannelV1RepricingAdjustment({
    this.percentageAdjustment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageAdjustment': ?percentageAdjustment == null ? null : percentageAdjustment!.toMap(),
    };
  }

  factory GoogleCloudChannelV1RepricingAdjustment.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingAdjustment(
      percentageAdjustment: map['percentageAdjustment'] == null ? null : GoogleCloudChannelV1PercentageAdjustment.fromMap((map['percentageAdjustment'] as Map).cast<String, dynamic>()),
    );
  }
}

