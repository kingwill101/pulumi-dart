// ignore_for_file: unused_element, unnecessary_cast

import 'sap_table_partition_settings_response.dart';

/// A copy activity source for SAP Table source.
class SapTableSourceResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// Specifies the maximum number of rows that will be retrieved at a time when retrieving data from SAP Table. Type: integer (or Expression with resultType integer).
  final dynamic batchSize;
  /// Specifies the custom RFC function module that will be used to read data from SAP Table. Type: string (or Expression with resultType string).
  final dynamic customRfcReadTableFunctionModule;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The partition mechanism that will be used for SAP table read in parallel. Possible values include: "None", "PartitionOnInt", "PartitionOnCalendarYear", "PartitionOnCalendarMonth", "PartitionOnCalendarDate", "PartitionOnTime".
  final dynamic partitionOption;
  /// The settings that will be leveraged for SAP table source partitioning.
  final SapTablePartitionSettingsResponse? partitionSettings;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic queryTimeout;
  /// The fields of the SAP table that will be retrieved. For example, column0, column1. Type: string (or Expression with resultType string).
  final dynamic rfcTableFields;
  /// The options for the filtering of the SAP Table. For example, COLUMN0 EQ SOME VALUE. Type: string (or Expression with resultType string).
  final dynamic rfcTableOptions;
  /// The number of rows to be retrieved. Type: integer(or Expression with resultType integer).
  final dynamic rowCount;
  /// The number of rows that will be skipped. Type: integer (or Expression with resultType integer).
  final dynamic rowSkips;
  /// The single character that will be used as delimiter passed to SAP RFC as well as splitting the output data retrieved. Type: string (or Expression with resultType string).
  final dynamic sapDataColumnDelimiter;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'SapTableSource'.
  final String type;

  /// Creates a new [SapTableSourceResponse].
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
  SapTableSourceResponse({
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
      'partitionSettings': ?partitionSettings == null ? null : partitionSettings!.toMap(),
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

  factory SapTableSourceResponse.fromMap(Map<String, dynamic> map) {
    return SapTableSourceResponse(
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      batchSize: map['batchSize'] == null ? null : map['batchSize'],
      customRfcReadTableFunctionModule: map['customRfcReadTableFunctionModule'] == null ? null : map['customRfcReadTableFunctionModule'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      partitionOption: map['partitionOption'] == null ? null : map['partitionOption'],
      partitionSettings: map['partitionSettings'] == null ? null : SapTablePartitionSettingsResponse.fromMap((map['partitionSettings'] as Map).cast<String, dynamic>()),
      queryTimeout: map['queryTimeout'] == null ? null : map['queryTimeout'],
      rfcTableFields: map['rfcTableFields'] == null ? null : map['rfcTableFields'],
      rfcTableOptions: map['rfcTableOptions'] == null ? null : map['rfcTableOptions'],
      rowCount: map['rowCount'] == null ? null : map['rowCount'],
      rowSkips: map['rowSkips'] == null ? null : map['rowSkips'],
      sapDataColumnDelimiter: map['sapDataColumnDelimiter'] == null ? null : map['sapDataColumnDelimiter'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      type: map['type'] as String,
    );
  }
}

