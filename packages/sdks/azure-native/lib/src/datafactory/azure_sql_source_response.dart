// ignore_for_file: unused_element, unnecessary_cast

import 'sql_partition_settings_response.dart';

/// A copy activity Azure SQL source.
class AzureSqlSourceResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// Specifies the transaction locking behavior for the SQL source. Allowed values: ReadCommitted/ReadUncommitted/RepeatableRead/Serializable/Snapshot. The default value is ReadCommitted. Type: string (or Expression with resultType string).
  final dynamic isolationLevel;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The partition mechanism that will be used for Sql read in parallel. Possible values include: "None", "PhysicalPartitionsOfTable", "DynamicRange". Type: string (or Expression with resultType string).
  final dynamic partitionOption;
  /// The settings that will be leveraged for Sql source partitioning.
  final SqlPartitionSettingsResponse? partitionSettings;
  /// Which additional types to produce.
  final dynamic produceAdditionalTypes;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// SQL reader query. Type: string (or Expression with resultType string).
  final dynamic sqlReaderQuery;
  /// Name of the stored procedure for a SQL Database source. This cannot be used at the same time as SqlReaderQuery. Type: string (or Expression with resultType string).
  final dynamic sqlReaderStoredProcedureName;
  /// Value and type setting for stored procedure parameters. Example: "{Parameter1: {value: "1", type: "int"}}".
  final dynamic storedProcedureParameters;
  /// Copy source type.
  /// Expected value is 'AzureSqlSource'.
  final String type;

  /// Creates a new [AzureSqlSourceResponse].
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
  AzureSqlSourceResponse({
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
      'partitionSettings': ?partitionSettings == null ? null : partitionSettings!.toMap(),
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

  factory AzureSqlSourceResponse.fromMap(Map<String, dynamic> map) {
    return AzureSqlSourceResponse(
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      isolationLevel: map['isolationLevel'] == null ? null : map['isolationLevel'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      partitionOption: map['partitionOption'] == null ? null : map['partitionOption'],
      partitionSettings: map['partitionSettings'] == null ? null : SqlPartitionSettingsResponse.fromMap((map['partitionSettings'] as Map).cast<String, dynamic>()),
      produceAdditionalTypes: map['produceAdditionalTypes'] == null ? null : map['produceAdditionalTypes'],
      queryTimeout: map['queryTimeout'] == null ? null : map['queryTimeout'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      sqlReaderQuery: map['sqlReaderQuery'] == null ? null : map['sqlReaderQuery'],
      sqlReaderStoredProcedureName: map['sqlReaderStoredProcedureName'] == null ? null : map['sqlReaderStoredProcedureName'],
      storedProcedureParameters: map['storedProcedureParameters'] == null ? null : map['storedProcedureParameters'],
      type: map['type'] as String,
    );
  }
}

