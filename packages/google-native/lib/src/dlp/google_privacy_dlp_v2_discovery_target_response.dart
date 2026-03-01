// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_discovery_target_response.dart';

/// Target used to match against for Discovery.
class GooglePrivacyDlpV2DiscoveryTargetResponse {
  /// BigQuery target for Discovery. The first target to match a table will be the one applied.
  final GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse bigQueryTarget;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryTargetResponse].
  /// [bigQueryTarget] BigQuery target for Discovery. The first target to match a table will be the one applied.
  GooglePrivacyDlpV2DiscoveryTargetResponse({required this.bigQueryTarget});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bigQueryTarget': bigQueryTarget.toMap()};
  }

  factory GooglePrivacyDlpV2DiscoveryTargetResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DiscoveryTargetResponse(
      bigQueryTarget: GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse.fromMap(
        (map['bigQueryTarget'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
