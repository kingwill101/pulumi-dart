// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_output_storage_config_response.dart';

/// If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk
class GooglePrivacyDlpV2SaveFindingsResponse {
  /// Location to store findings outside of DLP.
  final GooglePrivacyDlpV2OutputStorageConfigResponse outputConfig;

  /// Creates a new [GooglePrivacyDlpV2SaveFindingsResponse].
  /// [outputConfig] Location to store findings outside of DLP.
  GooglePrivacyDlpV2SaveFindingsResponse({
    required this.outputConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['outputConfig'] = outputConfig.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2SaveFindingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2SaveFindingsResponse(
      outputConfig: GooglePrivacyDlpV2OutputStorageConfigResponse.fromMap(
          (map['outputConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
