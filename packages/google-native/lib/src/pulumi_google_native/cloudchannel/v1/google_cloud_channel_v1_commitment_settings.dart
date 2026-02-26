// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_renewal_settings.dart';

/// Commitment settings for commitment-based offers.
class GoogleCloudChannelV1CommitmentSettings {
  /// Optional. Renewal settings applicable for a commitment-based Offer.
  final GoogleCloudChannelV1RenewalSettings? renewalSettings;

  GoogleCloudChannelV1CommitmentSettings({
    this.renewalSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final renewalSettingsValue = renewalSettings;
    if (renewalSettingsValue != null) {
      map['renewalSettings'] = renewalSettingsValue.toMap();
    }
    return map;
  }

  factory GoogleCloudChannelV1CommitmentSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1CommitmentSettings(
      renewalSettings: map['renewalSettings'] == null
          ? null
          : GoogleCloudChannelV1RenewalSettings.fromMap(
              (map['renewalSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
