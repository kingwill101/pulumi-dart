// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_application_configuration_sql_application_configuration_input_input_schema_record_column/application_application_configuration_sql_application_configuration_input_input_schema_record_column.dart';
import '../application_application_configuration_sql_application_configuration_input_input_schema_record_format/application_application_configuration_sql_application_configuration_input_input_schema_record_format.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema {
  /// Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.
  final List<
          ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn>
      recordColumns;

  /// Specifies the encoding of the records in the streaming source. For example, `UTF-8`.
  final String? recordEncoding;

  /// Specifies the format of the records on the streaming source.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormat
      recordFormat;

  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema({
    required this.recordColumns,
    this.recordEncoding,
    required this.recordFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordColumns'] = Input.encodeList<
        ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn,
        Map<String, dynamic>>(recordColumns, (value) => value.toMap());
    final recordEncodingValue = recordEncoding;
    if (recordEncodingValue != null) {
      map['recordEncoding'] = recordEncodingValue;
    }
    map['recordFormat'] = recordFormat.toMap();
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema(
      recordColumns: Input.decodeList<
              ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn>(
          map['recordColumns'],
          (value) =>
              ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn
                  .fromMap((value as Map).cast<String, dynamic>())),
      recordEncoding: map['recordEncoding'] == null
          ? null
          : map['recordEncoding'] as String,
      recordFormat:
          ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormat
              .fromMap((map['recordFormat'] as Map).cast<String, dynamic>()),
    );
  }
}
