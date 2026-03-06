// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_inputs_schema_record_column.dart';
import 'analytics_application_inputs_schema_record_format.dart';

class AnalyticsApplicationInputsSchema {
  /// The Record Column mapping for the streaming source data element.
  /// See Record Columns below for more details.
  final pulumi.Input<List<AnalyticsApplicationInputsSchemaRecordColumn>> recordColumns;
  /// The Encoding of the record in the streaming source.
  final pulumi.Input<String>? recordEncoding;
  /// The Record Format and mapping information to schematize a record.
  /// See Record Format below for more details.
  final pulumi.Input<AnalyticsApplicationInputsSchemaRecordFormat> recordFormat;

  /// Creates a new [AnalyticsApplicationInputsSchema].
  /// [recordColumns] The Record Column mapping for the streaming source data element.
  /// [recordEncoding] The Encoding of the record in the streaming source.
  /// [recordFormat] The Record Format and mapping information to schematize a record.
  const AnalyticsApplicationInputsSchema({
    required this.recordColumns,
    this.recordEncoding,
    required this.recordFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordColumns': pulumi.Input.mapInputValue<List<AnalyticsApplicationInputsSchemaRecordColumn>, List<Map<String, dynamic>>>(recordColumns, (value) => pulumi.Input.encodeList<AnalyticsApplicationInputsSchemaRecordColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recordEncoding': ?recordEncoding,
      'recordFormat': pulumi.Input.mapInputValue<AnalyticsApplicationInputsSchemaRecordFormat, Map<String, dynamic>>(recordFormat, (value) => value.toMap()),
    };
  }

  factory AnalyticsApplicationInputsSchema.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsSchema(
      recordColumns: pulumi.Input.fromValue(pulumi.Input.decodeList<AnalyticsApplicationInputsSchemaRecordColumn>(map['recordColumns']!, (value) => AnalyticsApplicationInputsSchemaRecordColumn.fromMap((value as Map).cast<String, dynamic>()))),
      recordEncoding: (() { final guardedValue = map['recordEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordFormat: pulumi.Input.fromValue(AnalyticsApplicationInputsSchemaRecordFormat.fromMap((map['recordFormat']! as Map).cast<String, dynamic>())),
    );
  }
}

