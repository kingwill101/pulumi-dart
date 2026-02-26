// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../analytics_application_reference_data_sources_schema_record_column/analytics_application_reference_data_sources_schema_record_column.dart';
import '../analytics_application_reference_data_sources_schema_record_format/analytics_application_reference_data_sources_schema_record_format.dart';

class AnalyticsApplicationReferenceDataSourcesSchema {
  /// The Record Column mapping for the streaming source data element.
  /// See Record Columns below for more details.
  final List<AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn>
      recordColumns;

  /// The Encoding of the record in the streaming source.
  final String? recordEncoding;

  /// The Record Format and mapping information to schematize a record.
  /// See Record Format below for more details.
  final AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat recordFormat;

  AnalyticsApplicationReferenceDataSourcesSchema({
    required this.recordColumns,
    this.recordEncoding,
    required this.recordFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordColumns'] = Input.encodeList<
        AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn,
        Map<String, dynamic>>(recordColumns, (value) => value.toMap());
    final recordEncodingValue = recordEncoding;
    if (recordEncodingValue != null) {
      map['recordEncoding'] = recordEncodingValue;
    }
    map['recordFormat'] = recordFormat.toMap();
    return map;
  }

  factory AnalyticsApplicationReferenceDataSourcesSchema.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchema(
      recordColumns: Input.decodeList<
              AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn>(
          map['recordColumns'],
          (value) => AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn
              .fromMap((value as Map).cast<String, dynamic>())),
      recordEncoding: map['recordEncoding'] == null
          ? null
          : map['recordEncoding'] as String,
      recordFormat:
          AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat.fromMap(
              (map['recordFormat'] as Map).cast<String, dynamic>()),
    );
  }
}
