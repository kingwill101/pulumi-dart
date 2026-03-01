// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity source for Microsoft Fabric Lakehouse Table.
class LakeHouseTableSourceResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Query an older snapshot by timestamp. Type: string (or Expression with resultType string).
  final dynamic timestampAsOf;
  /// Copy source type.
  /// Expected value is 'LakeHouseTableSource'.
  final String type;
  /// Query an older snapshot by version. Type: integer (or Expression with resultType integer).
  final dynamic versionAsOf;

  /// Creates a new [LakeHouseTableSourceResponse].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [timestampAsOf] Query an older snapshot by timestamp. Type: string (or Expression with resultType string).
  /// [type] Copy source type.
  /// [versionAsOf] Query an older snapshot by version. Type: integer (or Expression with resultType integer).
  LakeHouseTableSourceResponse({
    this.additionalColumns,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.sourceRetryCount,
    this.sourceRetryWait,
    this.timestampAsOf,
    required this.type,
    this.versionAsOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'timestampAsOf': ?timestampAsOf,
      'type': type,
      'versionAsOf': ?versionAsOf,
    };
  }

  factory LakeHouseTableSourceResponse.fromMap(Map<String, dynamic> map) {
    return LakeHouseTableSourceResponse(
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      timestampAsOf: map['timestampAsOf'] == null ? null : map['timestampAsOf'],
      type: map['type'] as String,
      versionAsOf: map['versionAsOf'] == null ? null : map['versionAsOf'],
    );
  }
}

