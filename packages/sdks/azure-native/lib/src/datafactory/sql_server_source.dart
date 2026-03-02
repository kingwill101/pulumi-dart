// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_partition_settings.dart';

/// A copy activity SQL server source.
class SqlServerSource {
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
  final pulumi.Input<SqlPartitionSettings>? partitionSettings;
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

  /// Creates a new [SqlServerSource].
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
  SqlServerSource({
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
      'partitionSettings': ?pulumi.Input.mapOptionalInputValue<SqlPartitionSettings, Map<String, dynamic>>(partitionSettings, (value) => value.toMap()),
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

  factory SqlServerSource.fromMap(Map<String, dynamic> map) {
    return SqlServerSource(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      isolationLevel: map['isolationLevel'] == null ? null : (map['isolationLevel']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      partitionOption: map['partitionOption'] == null ? null : (map['partitionOption']!).input(),
      partitionSettings: map['partitionSettings'] == null ? null : (SqlPartitionSettings.fromMap((map['partitionSettings']! as Map).cast<String, dynamic>())).input(),
      produceAdditionalTypes: map['produceAdditionalTypes'] == null ? null : (map['produceAdditionalTypes']!).input(),
      queryTimeout: map['queryTimeout'] == null ? null : (map['queryTimeout']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      sqlReaderQuery: map['sqlReaderQuery'] == null ? null : (map['sqlReaderQuery']!).input(),
      sqlReaderStoredProcedureName: map['sqlReaderStoredProcedureName'] == null ? null : (map['sqlReaderStoredProcedureName']!).input(),
      storedProcedureParameters: map['storedProcedureParameters'] == null ? null : (map['storedProcedureParameters']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

