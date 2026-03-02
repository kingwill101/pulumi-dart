// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity source for Microsoft Fabric Lakehouse Table.
class LakeHouseTableSourceResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Query an older snapshot by timestamp. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? timestampAsOf;
  /// Copy source type.
  /// Expected value is 'LakeHouseTableSource'.
  final pulumi.Input<String> type;
  /// Query an older snapshot by version. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? versionAsOf;

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
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      timestampAsOf: map['timestampAsOf'] == null ? null : (map['timestampAsOf']!).input(),
      type: (map['type'] as String).input(),
      versionAsOf: map['versionAsOf'] == null ? null : (map['versionAsOf']!).input(),
    );
  }
}

