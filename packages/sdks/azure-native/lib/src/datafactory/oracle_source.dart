// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_partition_settings.dart';

/// A copy activity Oracle source.
class OracleSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The decimal precision used to represent Oracle NUMBER type without precision and scale. The range is 1 to 256 and default value is 256 if not specified. Type: integer (or Expression with resultType integer). Only used for Version 2.0.
  final dynamic numberPrecision;
  /// The decimal scale used to represent Oracle NUMBER type without precision and scale. The range is 0 to 130 and default value is 130 if not specified. Type: integer (or Expression with resultType integer). Only used for Version 2.0.
  final dynamic numberScale;
  /// Oracle reader query. Type: string (or Expression with resultType string).
  final dynamic oracleReaderQuery;
  /// The partition mechanism that will be used for Oracle read in parallel. Possible values include: "None", "PhysicalPartitionsOfTable", "DynamicRange".
  final dynamic partitionOption;
  /// The settings that will be leveraged for Oracle source partitioning.
  final OraclePartitionSettings? partitionSettings;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'OracleSource'.
  final String type;

  /// Creates a new [OracleSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [numberPrecision] The decimal precision used to represent Oracle NUMBER type without precision and scale. The range is 1 to 256 and default value is 256 if not specified. Type: integer (or Expression with resultType integer). Only used for Version 2.0.
  /// [numberScale] The decimal scale used to represent Oracle NUMBER type without precision and scale. The range is 0 to 130 and default value is 130 if not specified. Type: integer (or Expression with resultType integer). Only used for Version 2.0.
  /// [oracleReaderQuery] Oracle reader query. Type: string (or Expression with resultType string).
  /// [partitionOption] The partition mechanism that will be used for Oracle read in parallel. Possible values include: "None", "PhysicalPartitionsOfTable", "DynamicRange".
  /// [partitionSettings] The settings that will be leveraged for Oracle source partitioning.
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  OracleSource({
    this.additionalColumns,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.numberPrecision,
    this.numberScale,
    this.oracleReaderQuery,
    this.partitionOption,
    this.partitionSettings,
    this.queryTimeout,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'numberPrecision': ?numberPrecision,
      'numberScale': ?numberScale,
      'oracleReaderQuery': ?oracleReaderQuery,
      'partitionOption': ?partitionOption,
      'partitionSettings': ?partitionSettings == null ? null : partitionSettings!.toMap(),
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory OracleSource.fromMap(Map<String, dynamic> map) {
    return OracleSource(
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      numberPrecision: map['numberPrecision'] == null ? null : map['numberPrecision'],
      numberScale: map['numberScale'] == null ? null : map['numberScale'],
      oracleReaderQuery: map['oracleReaderQuery'] == null ? null : map['oracleReaderQuery'],
      partitionOption: map['partitionOption'] == null ? null : map['partitionOption'],
      partitionSettings: map['partitionSettings'] == null ? null : OraclePartitionSettings.fromMap((map['partitionSettings'] as Map).cast<String, dynamic>()),
      queryTimeout: map['queryTimeout'] == null ? null : map['queryTimeout'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      type: map['type'] as String,
    );
  }
}

