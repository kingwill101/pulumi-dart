// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_table.dart';

/// If set, the detailed data profiles will be persisted to the location of your choice whenever updated.
class GooglePrivacyDlpV2Export {
  /// Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery.
  final GooglePrivacyDlpV2BigQueryTable? profileTable;

  /// Creates a new [GooglePrivacyDlpV2Export].
  /// [profileTable] Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery.
  GooglePrivacyDlpV2Export({this.profileTable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileTable': ?profileTable == null ? null : profileTable!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2Export.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Export(
      profileTable: map['profileTable'] == null
          ? null
          : GooglePrivacyDlpV2BigQueryTable.fromMap(
              (map['profileTable'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
