// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_deidentify_data_source_stats_response.dart';
import 'google_privacy_dlp_v2_requested_deidentify_options_response.dart';

/// The results of a Deidentify action from an inspect job.
class GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse {
  /// Stats about the de-identification operation.
  final GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse deidentifyStats;

  /// De-identification config used for the request.
  final GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse requestedOptions;

  /// Creates a new [GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse].
  /// [deidentifyStats] Stats about the de-identification operation.
  /// [requestedOptions] De-identification config used for the request.
  GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse({
    required this.deidentifyStats,
    required this.requestedOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deidentifyStats'] = deidentifyStats.toMap();
    map['requestedOptions'] = requestedOptions.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse(
      deidentifyStats:
          GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse.fromMap(
              (map['deidentifyStats'] as Map).cast<String, dynamic>()),
      requestedOptions:
          GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse.fromMap(
              (map['requestedOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
