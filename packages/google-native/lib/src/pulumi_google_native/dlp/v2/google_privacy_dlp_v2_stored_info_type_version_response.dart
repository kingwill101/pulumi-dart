// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_stored_info_type_config_response.dart';
import 'google_privacy_dlp_v2_stored_info_type_stats_response.dart';

/// Version of a StoredInfoType, including the configuration used to build it, create timestamp, and current state.
class GooglePrivacyDlpV2StoredInfoTypeVersionResponse {
  /// StoredInfoType configuration.
  final GooglePrivacyDlpV2StoredInfoTypeConfigResponse config;

  /// Create timestamp of the version. Read-only, determined by the system when the version is created.
  final String createTime;

  /// Errors that occurred when creating this storedInfoType version, or anomalies detected in the storedInfoType data that render it unusable. Only the five most recent errors will be displayed, with the most recent error appearing first. For example, some of the data for stored custom dictionaries is put in the user's Cloud Storage bucket, and if this data is modified or deleted by the user or another system, the dictionary becomes invalid. If any errors occur, fix the problem indicated by the error message and use the UpdateStoredInfoType API method to create another version of the storedInfoType to continue using it, reusing the same `config` if it was not the source of the error.
  final List<GooglePrivacyDlpV2ErrorResponse> errors;

  /// Stored info type version state. Read-only, updated by the system during dictionary creation.
  final String state;

  /// Statistics about this storedInfoType version.
  final GooglePrivacyDlpV2StoredInfoTypeStatsResponse stats;

  GooglePrivacyDlpV2StoredInfoTypeVersionResponse({
    required this.config,
    required this.createTime,
    required this.errors,
    required this.state,
    required this.stats,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['createTime'] = createTime;
    map['errors'] =
        Input.encodeList<GooglePrivacyDlpV2ErrorResponse, Map<String, dynamic>>(
            errors, (value) => value.toMap());
    map['state'] = state;
    map['stats'] = stats.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2StoredInfoTypeVersionResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredInfoTypeVersionResponse(
      config: GooglePrivacyDlpV2StoredInfoTypeConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      errors: Input.decodeList<GooglePrivacyDlpV2ErrorResponse>(
          map['errors'],
          (value) => GooglePrivacyDlpV2ErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      stats: GooglePrivacyDlpV2StoredInfoTypeStatsResponse.fromMap(
          (map['stats'] as Map).cast<String, dynamic>()),
    );
  }
}
