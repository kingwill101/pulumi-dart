// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_discovery_target.dart';

/// Target used to match against for Discovery.
class GooglePrivacyDlpV2DiscoveryTarget {
  /// BigQuery target for Discovery. The first target to match a table will be the one applied.
  final GooglePrivacyDlpV2BigQueryDiscoveryTarget? bigQueryTarget;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryTarget].
  /// [bigQueryTarget] BigQuery target for Discovery. The first target to match a table will be the one applied.
  GooglePrivacyDlpV2DiscoveryTarget({
    this.bigQueryTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigQueryTargetValue = bigQueryTarget;
    if (bigQueryTargetValue != null) {
      map['bigQueryTarget'] = bigQueryTargetValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2DiscoveryTarget.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoveryTarget(
      bigQueryTarget: map['bigQueryTarget'] == null
          ? null
          : GooglePrivacyDlpV2BigQueryDiscoveryTarget.fromMap(
              (map['bigQueryTarget'] as Map).cast<String, dynamic>()),
    );
  }
}
