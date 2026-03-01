// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity Azure Data Lake source.
class AzureDataLakeStoreSourceResponse {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  final dynamic recursive;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'AzureDataLakeStoreSource'.
  final String type;

  /// Creates a new [AzureDataLakeStoreSourceResponse].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [recursive] If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  AzureDataLakeStoreSourceResponse({
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.recursive,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'recursive': ?recursive,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory AzureDataLakeStoreSourceResponse.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeStoreSourceResponse(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      recursive: map['recursive'] == null ? null : map['recursive'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      type: map['type'] as String,
    );
  }
}

