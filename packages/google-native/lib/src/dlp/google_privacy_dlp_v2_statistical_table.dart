// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table.dart';
import 'google_privacy_dlp_v2_field_id.dart';
import 'google_privacy_dlp_v2_quasi_identifier_field.dart';

/// An auxiliary table containing statistical information on the relative frequency of different quasi-identifiers values. It has one or several quasi-identifiers columns, and one column that indicates the relative frequency of each quasi-identifier tuple. If a tuple is present in the data but not in the auxiliary table, the corresponding relative frequency is assumed to be zero (and thus, the tuple is highly reidentifiable).
class GooglePrivacyDlpV2StatisticalTable {
  /// Quasi-identifier columns.
  final List<GooglePrivacyDlpV2QuasiIdentifierField> quasiIds;

  /// The relative frequency column must contain a floating-point number between 0 and 1 (inclusive). Null values are assumed to be zero.
  final GooglePrivacyDlpV2FieldId relativeFrequency;

  /// Auxiliary table location.
  final GooglePrivacyDlpV2BigQueryTable table;

  /// Creates a new [GooglePrivacyDlpV2StatisticalTable].
  /// [quasiIds] Quasi-identifier columns.
  /// [relativeFrequency] The relative frequency column must contain a floating-point number between 0 and 1 (inclusive). Null values are assumed to be zero.
  /// [table] Auxiliary table location.
  GooglePrivacyDlpV2StatisticalTable({
    required this.quasiIds,
    required this.relativeFrequency,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['quasiIds'] = pulumi.Input.encodeList<
        GooglePrivacyDlpV2QuasiIdentifierField,
        Map<String, dynamic>>(quasiIds, (value) => value.toMap());
    map['relativeFrequency'] = relativeFrequency.toMap();
    map['table'] = table.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2StatisticalTable.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StatisticalTable(
      quasiIds: pulumi.Input.decodeList<GooglePrivacyDlpV2QuasiIdentifierField>(
          map['quasiIds'],
          (value) => GooglePrivacyDlpV2QuasiIdentifierField.fromMap(
              (value as Map).cast<String, dynamic>())),
      relativeFrequency: GooglePrivacyDlpV2FieldId.fromMap(
          (map['relativeFrequency'] as Map).cast<String, dynamic>()),
      table: GooglePrivacyDlpV2BigQueryTable.fromMap(
          (map['table'] as Map).cast<String, dynamic>()),
    );
  }
}
