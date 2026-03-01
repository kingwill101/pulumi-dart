// ignore_for_file: unused_element, unnecessary_cast

import 'distcp_settings.dart';

/// A copy activity HDFS source.
class HdfsSource {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// Specifies Distcp-related settings.
  final DistcpSettings? distcpSettings;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  final dynamic recursive;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'HdfsSource'.
  final String type;

  /// Creates a new [HdfsSource].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [distcpSettings] Specifies Distcp-related settings.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [recursive] If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  HdfsSource({
    this.disableMetricsCollection,
    this.distcpSettings,
    this.maxConcurrentConnections,
    this.recursive,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'distcpSettings': ?distcpSettings == null ? null : distcpSettings!.toMap(),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'recursive': ?recursive,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory HdfsSource.fromMap(Map<String, dynamic> map) {
    return HdfsSource(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      distcpSettings: map['distcpSettings'] == null ? null : DistcpSettings.fromMap((map['distcpSettings'] as Map).cast<String, dynamic>()),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      recursive: map['recursive'] == null ? null : map['recursive'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      type: map['type'] as String,
    );
  }
}

