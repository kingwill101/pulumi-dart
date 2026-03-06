// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_reference_data_sources_schema_record_column.dart';
import 'analytics_application_reference_data_sources_schema_record_format.dart';

class AnalyticsApplicationReferenceDataSourcesSchema {
  /// The Record Column mapping for the streaming source data element.
  /// See Record Columns below for more details.
  final pulumi.Input<List<AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn>> recordColumns;
  /// The Encoding of the record in the streaming source.
  final pulumi.Input<String>? recordEncoding;
  /// The Record Format and mapping information to schematize a record.
  /// See Record Format below for more details.
  final pulumi.Input<AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat> recordFormat;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesSchema].
  /// [recordColumns] The Record Column mapping for the streaming source data element.
  /// [recordEncoding] The Encoding of the record in the streaming source.
  /// [recordFormat] The Record Format and mapping information to schematize a record.
  const AnalyticsApplicationReferenceDataSourcesSchema({
    required this.recordColumns,
    this.recordEncoding,
    required this.recordFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordColumns': pulumi.Input.mapInputValue<List<AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn>, List<Map<String, dynamic>>>(recordColumns, (value) => pulumi.Input.encodeList<AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recordEncoding': ?recordEncoding,
      'recordFormat': pulumi.Input.mapInputValue<AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat, Map<String, dynamic>>(recordFormat, (value) => value.toMap()),
    };
  }

  factory AnalyticsApplicationReferenceDataSourcesSchema.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchema(
      recordColumns: pulumi.Input.fromValue(pulumi.Input.decodeList<AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn>(map['recordColumns']!, (value) => AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn.fromMap((value as Map).cast<String, dynamic>()))),
      recordEncoding: (() { final guardedValue = map['recordEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordFormat: pulumi.Input.fromValue(AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat.fromMap((map['recordFormat']! as Map).cast<String, dynamic>())),
    );
  }
}

