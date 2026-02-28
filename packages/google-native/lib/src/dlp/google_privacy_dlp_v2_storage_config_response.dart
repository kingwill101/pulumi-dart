// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_options_response.dart';
import 'google_privacy_dlp_v2_cloud_storage_options_response.dart';
import 'google_privacy_dlp_v2_datastore_options_response.dart';
import 'google_privacy_dlp_v2_hybrid_options_response.dart';
import 'google_privacy_dlp_v2_timespan_config_response.dart';

/// Shared message indicating Cloud storage type.
class GooglePrivacyDlpV2StorageConfigResponse {
  /// BigQuery options.
  final GooglePrivacyDlpV2BigQueryOptionsResponse bigQueryOptions;

  /// Cloud Storage options.
  final GooglePrivacyDlpV2CloudStorageOptionsResponse cloudStorageOptions;

  /// Google Cloud Datastore options.
  final GooglePrivacyDlpV2DatastoreOptionsResponse datastoreOptions;

  /// Hybrid inspection options.
  final GooglePrivacyDlpV2HybridOptionsResponse hybridOptions;
  final GooglePrivacyDlpV2TimespanConfigResponse timespanConfig;

  /// Creates a new [GooglePrivacyDlpV2StorageConfigResponse].
  /// [bigQueryOptions] BigQuery options.
  /// [cloudStorageOptions] Cloud Storage options.
  /// [datastoreOptions] Google Cloud Datastore options.
  /// [hybridOptions] Hybrid inspection options.
  /// [timespanConfig] Required.
  GooglePrivacyDlpV2StorageConfigResponse({
    required this.bigQueryOptions,
    required this.cloudStorageOptions,
    required this.datastoreOptions,
    required this.hybridOptions,
    required this.timespanConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigQueryOptions'] = bigQueryOptions.toMap();
    map['cloudStorageOptions'] = cloudStorageOptions.toMap();
    map['datastoreOptions'] = datastoreOptions.toMap();
    map['hybridOptions'] = hybridOptions.toMap();
    map['timespanConfig'] = timespanConfig.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2StorageConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StorageConfigResponse(
      bigQueryOptions: GooglePrivacyDlpV2BigQueryOptionsResponse.fromMap(
          (map['bigQueryOptions'] as Map).cast<String, dynamic>()),
      cloudStorageOptions:
          GooglePrivacyDlpV2CloudStorageOptionsResponse.fromMap(
              (map['cloudStorageOptions'] as Map).cast<String, dynamic>()),
      datastoreOptions: GooglePrivacyDlpV2DatastoreOptionsResponse.fromMap(
          (map['datastoreOptions'] as Map).cast<String, dynamic>()),
      hybridOptions: GooglePrivacyDlpV2HybridOptionsResponse.fromMap(
          (map['hybridOptions'] as Map).cast<String, dynamic>()),
      timespanConfig: GooglePrivacyDlpV2TimespanConfigResponse.fromMap(
          (map['timespanConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
