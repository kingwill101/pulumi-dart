// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_renewal_settings_response.dart';

/// Commitment settings for commitment-based offers.
class GoogleCloudChannelV1CommitmentSettingsResponse {
  /// Commitment end timestamp.
  final String endTime;

  /// Optional. Renewal settings applicable for a commitment-based Offer.
  final GoogleCloudChannelV1RenewalSettingsResponse renewalSettings;

  /// Commitment start timestamp.
  final String startTime;

  GoogleCloudChannelV1CommitmentSettingsResponse({
    required this.endTime,
    required this.renewalSettings,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['renewalSettings'] = renewalSettings.toMap();
    map['startTime'] = startTime;
    return map;
  }

  factory GoogleCloudChannelV1CommitmentSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1CommitmentSettingsResponse(
      endTime: map['endTime'] as String,
      renewalSettings: GoogleCloudChannelV1RenewalSettingsResponse.fromMap(
          (map['renewalSettings'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
    );
  }
}
