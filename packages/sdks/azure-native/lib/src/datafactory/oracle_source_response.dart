// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_partition_settings_response.dart';

/// A copy activity Oracle source.
class OracleSourceResponse {
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
  /// Oracle reader query. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? oracleReaderQuery;
  /// The partition mechanism that will be used for Oracle read in parallel. Possible values include: "None", "PhysicalPartitionsOfTable", "DynamicRange".
  final pulumi.Input<dynamic>? partitionOption;
  /// The settings that will be leveraged for Oracle source partitioning.
  final pulumi.Input<OraclePartitionSettingsResponse>? partitionSettings;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'OracleSource'.
  final pulumi.Input<String> type;

  /// Creates a new [OracleSourceResponse].
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
  OracleSourceResponse({
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
      'partitionSettings': ?pulumi.Input.mapOptionalInputValue<OraclePartitionSettingsResponse, Map<String, dynamic>>(partitionSettings, (value) => value.toMap()),
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory OracleSourceResponse.fromMap(Map<String, dynamic> map) {
    return OracleSourceResponse(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      numberPrecision: map['numberPrecision'] == null ? null : (map['numberPrecision']!).input(),
      numberScale: map['numberScale'] == null ? null : (map['numberScale']!).input(),
      oracleReaderQuery: map['oracleReaderQuery'] == null ? null : (map['oracleReaderQuery']!).input(),
      partitionOption: map['partitionOption'] == null ? null : (map['partitionOption']!).input(),
      partitionSettings: map['partitionSettings'] == null ? null : (OraclePartitionSettingsResponse.fromMap((map['partitionSettings']! as Map).cast<String, dynamic>())).input(),
      queryTimeout: map['queryTimeout'] == null ? null : (map['queryTimeout']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

