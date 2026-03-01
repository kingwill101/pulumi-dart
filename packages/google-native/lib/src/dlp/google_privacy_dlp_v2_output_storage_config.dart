// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_table.dart';
import 'google_privacy_dlp_v2_output_storage_config_output_schema.dart';

/// Cloud repository for storing output.
class GooglePrivacyDlpV2OutputStorageConfig {
  /// Schema used for writing the findings for Inspect jobs. This field is only used for Inspect and must be unspecified for Risk jobs. Columns are derived from the `Finding` object. If appending to an existing table, any columns from the predefined schema that are missing will be added. No columns in the existing table will be deleted. If unspecified, then all available columns will be used for a new table or an (existing) table with no schema, and no changes will be made to an existing table that has a schema. Only for use with external storage.
  final GooglePrivacyDlpV2OutputStorageConfigOutputSchema? outputSchema;

  /// Store findings in an existing table or a new table in an existing dataset. If table_id is not set a new one will be generated for you with the following format: dlp_googleapis_yyyy_mm_dd_[dlp_job_id]. Pacific time zone will be used for generating the date details. For Inspect, each column in an existing output table must have the same name, type, and mode of a field in the `Finding` object. For Risk, an existing output table should be the output of a previous Risk analysis job run on the same source table, with the same privacy metric and quasi-identifiers. Risk jobs that analyze the same table but compute a different privacy metric, or use different sets of quasi-identifiers, cannot store their results in the same table.
  final GooglePrivacyDlpV2BigQueryTable? table;

  /// Creates a new [GooglePrivacyDlpV2OutputStorageConfig].
  /// [outputSchema] Schema used for writing the findings for Inspect jobs. This field is only used for Inspect and must be unspecified for Risk jobs. Columns are derived from the `Finding` object. If appending to an existing table, any columns from the predefined schema that are missing will be added. No columns in the existing table will be deleted. If unspecified, then all available columns will be used for a new table or an (existing) table with no schema, and no changes will be made to an existing table that has a schema. Only for use with external storage.
  /// [table] Store findings in an existing table or a new table in an existing dataset. If table_id is not set a new one will be generated for you with the following format: dlp_googleapis_yyyy_mm_dd_[dlp_job_id]. Pacific time zone will be used for generating the date details. For Inspect, each column in an existing output table must have the same name, type, and mode of a field in the `Finding` object. For Risk, an existing output table should be the output of a previous Risk analysis job run on the same source table, with the same privacy metric and quasi-identifiers. Risk jobs that analyze the same table but compute a different privacy metric, or use different sets of quasi-identifiers, cannot store their results in the same table.
  GooglePrivacyDlpV2OutputStorageConfig({this.outputSchema, this.table});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputSchema': ?outputSchema == null ? null : outputSchema!.value,
      'table': ?table == null ? null : table!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2OutputStorageConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2OutputStorageConfig(
      outputSchema: map['outputSchema'] == null
          ? null
          : GooglePrivacyDlpV2OutputStorageConfigOutputSchema.fromValue(
              map['outputSchema'] as String,
            ),
      table: map['table'] == null
          ? null
          : GooglePrivacyDlpV2BigQueryTable.fromMap(
              (map['table'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
