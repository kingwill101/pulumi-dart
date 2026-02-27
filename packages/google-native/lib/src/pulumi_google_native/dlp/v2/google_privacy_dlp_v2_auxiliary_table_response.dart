// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_big_query_table_response.dart';
import 'google_privacy_dlp_v2_field_id_response.dart';
import 'google_privacy_dlp_v2_quasi_id_field_response.dart';

/// An auxiliary table contains statistical information on the relative frequency of different quasi-identifiers values. It has one or several quasi-identifiers columns, and one column that indicates the relative frequency of each quasi-identifier tuple. If a tuple is present in the data but not in the auxiliary table, the corresponding relative frequency is assumed to be zero (and thus, the tuple is highly reidentifiable).
class GooglePrivacyDlpV2AuxiliaryTableResponse {
  /// Quasi-identifier columns.
  final List<GooglePrivacyDlpV2QuasiIdFieldResponse> quasiIds;

  /// The relative frequency column must contain a floating-point number between 0 and 1 (inclusive). Null values are assumed to be zero.
  final GooglePrivacyDlpV2FieldIdResponse relativeFrequency;

  /// Auxiliary table location.
  final GooglePrivacyDlpV2BigQueryTableResponse table;

  GooglePrivacyDlpV2AuxiliaryTableResponse({
    required this.quasiIds,
    required this.relativeFrequency,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['quasiIds'] = Input.encodeList<GooglePrivacyDlpV2QuasiIdFieldResponse,
        Map<String, dynamic>>(quasiIds, (value) => value.toMap());
    map['relativeFrequency'] = relativeFrequency.toMap();
    map['table'] = table.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2AuxiliaryTableResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2AuxiliaryTableResponse(
      quasiIds: Input.decodeList<GooglePrivacyDlpV2QuasiIdFieldResponse>(
          map['quasiIds'],
          (value) => GooglePrivacyDlpV2QuasiIdFieldResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      relativeFrequency: GooglePrivacyDlpV2FieldIdResponse.fromMap(
          (map['relativeFrequency'] as Map).cast<String, dynamic>()),
      table: GooglePrivacyDlpV2BigQueryTableResponse.fromMap(
          (map['table'] as Map).cast<String, dynamic>()),
    );
  }
}
