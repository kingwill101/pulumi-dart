// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sap_table_partition_settings.dart';

/// A copy activity source for SAP Table source.
class SapTableSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// Specifies the maximum number of rows that will be retrieved at a time when retrieving data from SAP Table. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? batchSize;
  /// Specifies the custom RFC function module that will be used to read data from SAP Table. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? customRfcReadTableFunctionModule;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// The partition mechanism that will be used for SAP table read in parallel. Possible values include: "None", "PartitionOnInt", "PartitionOnCalendarYear", "PartitionOnCalendarMonth", "PartitionOnCalendarDate", "PartitionOnTime".
  final pulumi.Input<dynamic>? partitionOption;
  /// The settings that will be leveraged for SAP table source partitioning.
  final pulumi.Input<SapTablePartitionSettings?>? partitionSettings;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;
  /// The fields of the SAP table that will be retrieved. For example, column0, column1. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? rfcTableFields;
  /// The options for the filtering of the SAP Table. For example, COLUMN0 EQ SOME VALUE. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? rfcTableOptions;
  /// The number of rows to be retrieved. Type: integer(or Expression with resultType integer).
  final pulumi.Input<dynamic>? rowCount;
  /// The number of rows that will be skipped. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? rowSkips;
  /// The single character that will be used as delimiter passed to SAP RFC as well as splitting the output data retrieved. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sapDataColumnDelimiter;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'SapTableSource'.
  final pulumi.Input<String> type;

  /// Creates a new [SapTableSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [batchSize] Specifies the maximum number of rows that will be retrieved at a time when retrieving data from SAP Table. Type: integer (or Expression with resultType integer).
  /// [customRfcReadTableFunctionModule] Specifies the custom RFC function module that will be used to read data from SAP Table. Type: string (or Expression with resultType string).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [partitionOption] The partition mechanism that will be used for SAP table read in parallel. Possible values include: "None", "PartitionOnInt", "PartitionOnCalendarYear", "PartitionOnCalendarMonth", "PartitionOnCalendarDate", "PartitionOnTime".
  /// [partitionSettings] The settings that will be leveraged for SAP table source partitioning.
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [rfcTableFields] The fields of the SAP table that will be retrieved. For example, column0, column1. Type: string (or Expression with resultType string).
  /// [rfcTableOptions] The options for the filtering of the SAP Table. For example, COLUMN0 EQ SOME VALUE. Type: string (or Expression with resultType string).
  /// [rowCount] The number of rows to be retrieved. Type: integer(or Expression with resultType integer).
  /// [rowSkips] The number of rows that will be skipped. Type: integer (or Expression with resultType integer).
  /// [sapDataColumnDelimiter] The single character that will be used as delimiter passed to SAP RFC as well as splitting the output data retrieved. Type: string (or Expression with resultType string).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  const SapTableSource({
    this.additionalColumns,
    this.batchSize,
    this.customRfcReadTableFunctionModule,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.partitionOption,
    this.partitionSettings,
    this.queryTimeout,
    this.rfcTableFields,
    this.rfcTableOptions,
    this.rowCount,
    this.rowSkips,
    this.sapDataColumnDelimiter,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'batchSize': ?batchSize,
      'customRfcReadTableFunctionModule': ?customRfcReadTableFunctionModule,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'partitionOption': ?partitionOption,
      'partitionSettings': ?pulumi.Input.mapOptionalInputValue<SapTablePartitionSettings, Map<String, dynamic>>(partitionSettings, (value) => value.toMap()),
      'queryTimeout': ?queryTimeout,
      'rfcTableFields': ?rfcTableFields,
      'rfcTableOptions': ?rfcTableOptions,
      'rowCount': ?rowCount,
      'rowSkips': ?rowSkips,
      'sapDataColumnDelimiter': ?sapDataColumnDelimiter,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory SapTableSource.fromMap(Map<String, dynamic> map) {
    return SapTableSource(
      additionalColumns: (() { final guardedValue = map['additionalColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      customRfcReadTableFunctionModule: (() { final guardedValue = map['customRfcReadTableFunctionModule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionOption: (() { final guardedValue = map['partitionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionSettings: (() { final guardedValue = map['partitionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SapTablePartitionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryTimeout: (() { final guardedValue = map['queryTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rfcTableFields: (() { final guardedValue = map['rfcTableFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rfcTableOptions: (() { final guardedValue = map['rfcTableOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rowCount: (() { final guardedValue = map['rowCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rowSkips: (() { final guardedValue = map['rowSkips']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sapDataColumnDelimiter: (() { final guardedValue = map['sapDataColumnDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryCount: (() { final guardedValue = map['sourceRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryWait: (() { final guardedValue = map['sourceRetryWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
