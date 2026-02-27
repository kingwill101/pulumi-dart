// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_big_query_options_sample_method.dart';
import 'google_privacy_dlp_v2_big_query_table.dart';
import 'google_privacy_dlp_v2_field_id.dart';

/// Options defining BigQuery table and row identifiers.
class GooglePrivacyDlpV2BigQueryOptions {
  /// References to fields excluded from scanning. This allows you to skip inspection of entire columns which you know have no findings. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
  final List<GooglePrivacyDlpV2FieldId>? excludedFields;

  /// Table fields that may uniquely identify a row within the table. When `actions.saveFindings.outputConfig.table` is specified, the values of columns specified here are available in the output table under `location.content_locations.record_location.record_key.id_values`. Nested fields such as `person.birthdate.year` are allowed.
  final List<GooglePrivacyDlpV2FieldId>? identifyingFields;

  /// Limit scanning only to these fields. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
  final List<GooglePrivacyDlpV2FieldId>? includedFields;

  /// Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted. If not set, or if set to 0, all rows will be scanned. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
  final String? rowsLimit;

  /// Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
  final int? rowsLimitPercent;
  final GooglePrivacyDlpV2BigQueryOptionsSampleMethod? sampleMethod;

  /// Complete BigQuery table reference.
  final GooglePrivacyDlpV2BigQueryTable? tableReference;

  GooglePrivacyDlpV2BigQueryOptions({
    this.excludedFields,
    this.identifyingFields,
    this.includedFields,
    this.rowsLimit,
    this.rowsLimitPercent,
    this.sampleMethod,
    this.tableReference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludedFieldsValue = excludedFields;
    if (excludedFieldsValue != null) {
      map['excludedFields'] =
          Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(
              excludedFieldsValue, (value) => value.toMap());
    }
    final identifyingFieldsValue = identifyingFields;
    if (identifyingFieldsValue != null) {
      map['identifyingFields'] =
          Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(
              identifyingFieldsValue, (value) => value.toMap());
    }
    final includedFieldsValue = includedFields;
    if (includedFieldsValue != null) {
      map['includedFields'] =
          Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(
              includedFieldsValue, (value) => value.toMap());
    }
    final rowsLimitValue = rowsLimit;
    if (rowsLimitValue != null) {
      map['rowsLimit'] = rowsLimitValue;
    }
    final rowsLimitPercentValue = rowsLimitPercent;
    if (rowsLimitPercentValue != null) {
      map['rowsLimitPercent'] = rowsLimitPercentValue;
    }
    final sampleMethodValue = sampleMethod;
    if (sampleMethodValue != null) {
      map['sampleMethod'] = sampleMethodValue.value;
    }
    final tableReferenceValue = tableReference;
    if (tableReferenceValue != null) {
      map['tableReference'] = tableReferenceValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2BigQueryOptions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryOptions(
      excludedFields: map['excludedFields'] == null
          ? null
          : Input.decodeList<GooglePrivacyDlpV2FieldId>(
              map['excludedFields'],
              (value) => GooglePrivacyDlpV2FieldId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      identifyingFields: map['identifyingFields'] == null
          ? null
          : Input.decodeList<GooglePrivacyDlpV2FieldId>(
              map['identifyingFields'],
              (value) => GooglePrivacyDlpV2FieldId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      includedFields: map['includedFields'] == null
          ? null
          : Input.decodeList<GooglePrivacyDlpV2FieldId>(
              map['includedFields'],
              (value) => GooglePrivacyDlpV2FieldId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rowsLimit: map['rowsLimit'] == null ? null : map['rowsLimit'] as String,
      rowsLimitPercent: map['rowsLimitPercent'] == null
          ? null
          : map['rowsLimitPercent'] as int,
      sampleMethod: map['sampleMethod'] == null
          ? null
          : GooglePrivacyDlpV2BigQueryOptionsSampleMethod.fromValue(
              map['sampleMethod'] as String),
      tableReference: map['tableReference'] == null
          ? null
          : GooglePrivacyDlpV2BigQueryTable.fromMap(
              (map['tableReference'] as Map).cast<String, dynamic>()),
    );
  }
}
