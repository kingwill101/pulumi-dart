// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity for Microsoft Fabric Lakehouse Table sink.
class LakeHouseTableSinkResponse {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Specify the partition column names from sink columns. Type: array of objects (or Expression with resultType array of objects).
  final dynamic partitionNameList;
  /// Create partitions in folder structure based on one or multiple columns. Each distinct column value (pair) will be a new partition. Possible values include: "None", "PartitionByKey".
  final dynamic partitionOption;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// The type of table action for Lakehouse Table sink. Possible values include: "None", "Append", "Overwrite".
  final dynamic tableActionOption;
  /// Copy sink type.
  /// Expected value is 'LakeHouseTableSink'.
  final String type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;

  /// Creates a new [LakeHouseTableSinkResponse].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [partitionNameList] Specify the partition column names from sink columns. Type: array of objects (or Expression with resultType array of objects).
  /// [partitionOption] Create partitions in folder structure based on one or multiple columns. Each distinct column value (pair) will be a new partition. Possible values include: "None", "PartitionByKey".
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [tableActionOption] The type of table action for Lakehouse Table sink. Possible values include: "None", "Append", "Overwrite".
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  LakeHouseTableSinkResponse({
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.partitionNameList,
    this.partitionOption,
    this.sinkRetryCount,
    this.sinkRetryWait,
    this.tableActionOption,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'partitionNameList': ?partitionNameList,
      'partitionOption': ?partitionOption,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'tableActionOption': ?tableActionOption,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory LakeHouseTableSinkResponse.fromMap(Map<String, dynamic> map) {
    return LakeHouseTableSinkResponse(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      partitionNameList: map['partitionNameList'] == null ? null : map['partitionNameList'],
      partitionOption: map['partitionOption'] == null ? null : map['partitionOption'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      tableActionOption: map['tableActionOption'] == null ? null : map['tableActionOption'],
      type: map['type'] as String,
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
    );
  }
}

