// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_inputs_schema_record_column.dart';
import 'analytics_application_inputs_schema_record_format.dart';

class AnalyticsApplicationInputsSchema {
  /// The Record Column mapping for the streaming source data element.
  /// See Record Columns below for more details.
  final List<AnalyticsApplicationInputsSchemaRecordColumn> recordColumns;

  /// The Encoding of the record in the streaming source.
  final String? recordEncoding;

  /// The Record Format and mapping information to schematize a record.
  /// See Record Format below for more details.
  final AnalyticsApplicationInputsSchemaRecordFormat recordFormat;

  /// Creates a new [AnalyticsApplicationInputsSchema].
  /// [recordColumns] The Record Column mapping for the streaming source data element.
  /// [recordEncoding] The Encoding of the record in the streaming source.
  /// [recordFormat] The Record Format and mapping information to schematize a record.
  AnalyticsApplicationInputsSchema({
    required this.recordColumns,
    this.recordEncoding,
    required this.recordFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordColumns'] = pulumi.Input.encodeList<
        AnalyticsApplicationInputsSchemaRecordColumn,
        Map<String, dynamic>>(recordColumns, (value) => value.toMap());
    final recordEncodingValue = recordEncoding;
    if (recordEncodingValue != null) {
      map['recordEncoding'] = recordEncodingValue;
    }
    map['recordFormat'] = recordFormat.toMap();
    return map;
  }

  factory AnalyticsApplicationInputsSchema.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsSchema(
      recordColumns:
          pulumi.Input.decodeList<AnalyticsApplicationInputsSchemaRecordColumn>(
              map['recordColumns'],
              (value) => AnalyticsApplicationInputsSchemaRecordColumn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      recordEncoding: map['recordEncoding'] == null
          ? null
          : map['recordEncoding'] as String,
      recordFormat: AnalyticsApplicationInputsSchemaRecordFormat.fromMap(
          (map['recordFormat'] as Map).cast<String, dynamic>()),
    );
  }
}
