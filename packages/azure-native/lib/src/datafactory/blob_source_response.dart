// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity Azure Blob source.
class BlobSourceResponse {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  final dynamic recursive;
  /// Number of header lines to skip from each blob. Type: integer (or Expression with resultType integer).
  final dynamic skipHeaderLineCount;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Treat empty as null. Type: boolean (or Expression with resultType boolean).
  final dynamic treatEmptyAsNull;
  /// Copy source type.
  /// Expected value is 'BlobSource'.
  final String type;

  /// Creates a new [BlobSourceResponse].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [recursive] If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  /// [skipHeaderLineCount] Number of header lines to skip from each blob. Type: integer (or Expression with resultType integer).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [treatEmptyAsNull] Treat empty as null. Type: boolean (or Expression with resultType boolean).
  /// [type] Copy source type.
  BlobSourceResponse({
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.recursive,
    this.skipHeaderLineCount,
    this.sourceRetryCount,
    this.sourceRetryWait,
    this.treatEmptyAsNull,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'recursive': ?recursive,
      'skipHeaderLineCount': ?skipHeaderLineCount,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'treatEmptyAsNull': ?treatEmptyAsNull,
      'type': type,
    };
  }

  factory BlobSourceResponse.fromMap(Map<String, dynamic> map) {
    return BlobSourceResponse(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      recursive: map['recursive'] == null ? null : map['recursive'],
      skipHeaderLineCount: map['skipHeaderLineCount'] == null ? null : map['skipHeaderLineCount'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      treatEmptyAsNull: map['treatEmptyAsNull'] == null ? null : map['treatEmptyAsNull'],
      type: map['type'] as String,
    );
  }
}

