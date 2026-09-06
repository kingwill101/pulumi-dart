// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_rds_for_oracle_partition_settings.dart';

/// A copy activity AmazonRdsForOracle source.
class AmazonRdsForOracleSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// The decimal precision used to represent Oracle NUMBER type without precision and scale. The range is 1 to 256 and default value is 256 if not specified. Type: integer (or Expression with resultType integer). Only used for Version 2.0.
  final pulumi.Input<dynamic>? numberPrecision;
  /// The decimal scale used to represent Oracle NUMBER type without precision and scale. The range is 0 to 130 and default value is 130 if not specified. Type: integer (or Expression with resultType integer). Only used for Version 2.0.
  final pulumi.Input<dynamic>? numberScale;
  /// AmazonRdsForOracle reader query. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? oracleReaderQuery;
  /// The partition mechanism that will be used for AmazonRdsForOracle read in parallel. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionOption;
  /// The settings that will be leveraged for AmazonRdsForOracle source partitioning.
  final pulumi.Input<AmazonRdsForOraclePartitionSettings?>? partitionSettings;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'AmazonRdsForOracleSource'.
  final pulumi.Input<String> type;

  /// Creates a new [AmazonRdsForOracleSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [numberPrecision] The decimal precision used to represent Oracle NUMBER type without precision and scale. The range is 1 to 256 and default value is 256 if not specified. Type: integer (or Expression with resultType integer). Only used for Version 2.0.
  /// [numberScale] The decimal scale used to represent Oracle NUMBER type without precision and scale. The range is 0 to 130 and default value is 130 if not specified. Type: integer (or Expression with resultType integer). Only used for Version 2.0.
  /// [oracleReaderQuery] AmazonRdsForOracle reader query. Type: string (or Expression with resultType string).
  /// [partitionOption] The partition mechanism that will be used for AmazonRdsForOracle read in parallel. Type: string (or Expression with resultType string).
  /// [partitionSettings] The settings that will be leveraged for AmazonRdsForOracle source partitioning.
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  const AmazonRdsForOracleSource({
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
      'partitionSettings': ?pulumi.Input.mapOptionalInputValue<AmazonRdsForOraclePartitionSettings, Map<String, dynamic>>(partitionSettings, (value) => value.toMap()),
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory AmazonRdsForOracleSource.fromMap(Map<String, dynamic> map) {
    return AmazonRdsForOracleSource(
      additionalColumns: (() { final guardedValue = map['additionalColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      numberPrecision: (() { final guardedValue = map['numberPrecision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      numberScale: (() { final guardedValue = map['numberScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      oracleReaderQuery: (() { final guardedValue = map['oracleReaderQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionOption: (() { final guardedValue = map['partitionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionSettings: (() { final guardedValue = map['partitionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmazonRdsForOraclePartitionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryTimeout: (() { final guardedValue = map['queryTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryCount: (() { final guardedValue = map['sourceRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryWait: (() { final guardedValue = map['sourceRetryWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
