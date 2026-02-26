// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_table_response.dart';

/// If set, the detailed data profiles will be persisted to the location of your choice whenever updated.
class GooglePrivacyDlpV2ExportResponse {
  /// Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery.
  final GooglePrivacyDlpV2BigQueryTableResponse profileTable;

  GooglePrivacyDlpV2ExportResponse({
    required this.profileTable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['profileTable'] = profileTable.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2ExportResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExportResponse(
      profileTable: GooglePrivacyDlpV2BigQueryTableResponse.fromMap(
          (map['profileTable'] as Map).cast<String, dynamic>()),
    );
  }
}
