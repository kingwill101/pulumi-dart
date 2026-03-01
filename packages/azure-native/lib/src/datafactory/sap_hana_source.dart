// ignore_for_file: unused_element, unnecessary_cast

import 'sap_hana_partition_settings.dart';

/// A copy activity source for SAP HANA source.
class SapHanaSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The packet size of data read from SAP HANA. Type: integer(or Expression with resultType integer).
  final dynamic packetSize;
  /// The partition mechanism that will be used for SAP HANA read in parallel. Possible values include: "None", "PhysicalPartitionsOfTable", "SapHanaDynamicRange".
  final dynamic partitionOption;
  /// The settings that will be leveraged for SAP HANA source partitioning.
  final SapHanaPartitionSettings? partitionSettings;
  /// SAP HANA Sql query. Type: string (or Expression with resultType string).
  final dynamic query;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'SapHanaSource'.
  final String type;

  /// Creates a new [SapHanaSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [packetSize] The packet size of data read from SAP HANA. Type: integer(or Expression with resultType integer).
  /// [partitionOption] The partition mechanism that will be used for SAP HANA read in parallel. Possible values include: "None", "PhysicalPartitionsOfTable", "SapHanaDynamicRange".
  /// [partitionSettings] The settings that will be leveraged for SAP HANA source partitioning.
  /// [query] SAP HANA Sql query. Type: string (or Expression with resultType string).
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  SapHanaSource({
    this.additionalColumns,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.packetSize,
    this.partitionOption,
    this.partitionSettings,
    this.query,
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
      'packetSize': ?packetSize,
      'partitionOption': ?partitionOption,
      'partitionSettings': ?partitionSettings == null ? null : partitionSettings!.toMap(),
      'query': ?query,
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory SapHanaSource.fromMap(Map<String, dynamic> map) {
    return SapHanaSource(
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      packetSize: map['packetSize'] == null ? null : map['packetSize'],
      partitionOption: map['partitionOption'] == null ? null : map['partitionOption'],
      partitionSettings: map['partitionSettings'] == null ? null : SapHanaPartitionSettings.fromMap((map['partitionSettings'] as Map).cast<String, dynamic>()),
      query: map['query'] == null ? null : map['query'],
      queryTimeout: map['queryTimeout'] == null ? null : map['queryTimeout'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      type: map['type'] as String,
    );
  }
}

