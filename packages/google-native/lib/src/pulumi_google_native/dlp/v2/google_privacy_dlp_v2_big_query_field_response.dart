// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_table_response.dart';
import 'google_privacy_dlp_v2_field_id_response.dart';

/// Message defining a field of a BigQuery table.
class GooglePrivacyDlpV2BigQueryFieldResponse {
  /// Designated field in the BigQuery table.
  final GooglePrivacyDlpV2FieldIdResponse field;

  /// Source table of the field.
  final GooglePrivacyDlpV2BigQueryTableResponse table;

  GooglePrivacyDlpV2BigQueryFieldResponse({
    required this.field,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['field'] = field.toMap();
    map['table'] = table.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2BigQueryFieldResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryFieldResponse(
      field: GooglePrivacyDlpV2FieldIdResponse.fromMap(
          (map['field'] as Map).cast<String, dynamic>()),
      table: GooglePrivacyDlpV2BigQueryTableResponse.fromMap(
          (map['table'] as Map).cast<String, dynamic>()),
    );
  }
}
