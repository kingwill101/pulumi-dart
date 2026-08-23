// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_partition_settings_response.dart';

/// A copy activity SQL server source.
class SqlServerSourceResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// Specifies the transaction locking behavior for the SQL source. Allowed values: ReadCommitted/ReadUncommitted/RepeatableRead/Serializable/Snapshot. The default value is ReadCommitted. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? isolationLevel;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// The partition mechanism that will be used for Sql read in parallel. Possible values include: "None", "PhysicalPartitionsOfTable", "DynamicRange". Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionOption;
  /// The settings that will be leveraged for Sql source partitioning.
  final pulumi.Input<SqlPartitionSettingsResponse>? partitionSettings;
  /// Which additional types to produce.
  final pulumi.Input<dynamic>? produceAdditionalTypes;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// SQL reader query. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sqlReaderQuery;
  /// Name of the stored procedure for a SQL Database source. This cannot be used at the same time as SqlReaderQuery. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sqlReaderStoredProcedureName;
  /// Value and type setting for stored procedure parameters. Example: "{Parameter1: {value: "1", type: "int"}}".
  final pulumi.Input<dynamic>? storedProcedureParameters;
  /// Copy source type.
  /// Expected value is 'SqlServerSource'.
  final pulumi.Input<String> type;

  /// Creates a new [SqlServerSourceResponse].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [isolationLevel] Specifies the transaction locking behavior for the SQL source. Allowed values: ReadCommitted/ReadUncommitted/RepeatableRead/Serializable/Snapshot. The default value is ReadCommitted. Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [partitionOption] The partition mechanism that will be used for Sql read in parallel. Possible values include: "None", "PhysicalPartitionsOfTable", "DynamicRange". Type: string (or Expression with resultType string).
  /// [partitionSettings] The settings that will be leveraged for Sql source partitioning.
  /// [produceAdditionalTypes] Which additional types to produce.
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sqlReaderQuery] SQL reader query. Type: string (or Expression with resultType string).
  /// [sqlReaderStoredProcedureName] Name of the stored procedure for a SQL Database source. This cannot be used at the same time as SqlReaderQuery. Type: string (or Expression with resultType string).
  /// [storedProcedureParameters] Value and type setting for stored procedure parameters. Example: "{Parameter1: {value: "1", type: "int"}}".
  /// [type] Copy source type.
  const SqlServerSourceResponse({
    this.additionalColumns,
    this.disableMetricsCollection,
    this.isolationLevel,
    this.maxConcurrentConnections,
    this.partitionOption,
    this.partitionSettings,
    this.produceAdditionalTypes,
    this.queryTimeout,
    this.sourceRetryCount,
    this.sourceRetryWait,
    this.sqlReaderQuery,
    this.sqlReaderStoredProcedureName,
    this.storedProcedureParameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'disableMetricsCollection': ?disableMetricsCollection,
      'isolationLevel': ?isolationLevel,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'partitionOption': ?partitionOption,
      'partitionSettings': ?pulumi.Input.mapOptionalInputValue<SqlPartitionSettingsResponse, Map<String, dynamic>>(partitionSettings, (value) => value.toMap()),
      'produceAdditionalTypes': ?produceAdditionalTypes,
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'sqlReaderQuery': ?sqlReaderQuery,
      'sqlReaderStoredProcedureName': ?sqlReaderStoredProcedureName,
      'storedProcedureParameters': ?storedProcedureParameters,
      'type': type,
    };
  }

  factory SqlServerSourceResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerSourceResponse(
      additionalColumns: (() { final guardedValue = map['additionalColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      isolationLevel: (() { final guardedValue = map['isolationLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionOption: (() { final guardedValue = map['partitionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionSettings: (() { final guardedValue = map['partitionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlPartitionSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      produceAdditionalTypes: (() { final guardedValue = map['produceAdditionalTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      queryTimeout: (() { final guardedValue = map['queryTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryCount: (() { final guardedValue = map['sourceRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryWait: (() { final guardedValue = map['sourceRetryWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sqlReaderQuery: (() { final guardedValue = map['sqlReaderQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sqlReaderStoredProcedureName: (() { final guardedValue = map['sqlReaderStoredProcedureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      storedProcedureParameters: (() { final guardedValue = map['storedProcedureParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
