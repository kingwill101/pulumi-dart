// ignore_for_file: unused_element, unnecessary_cast


/// Cloud endpoint change enumeration activity object
class CloudEndpointChangeEnumerationActivityResponse {
  /// Progress percentage for processing deletes. This is done separately from the rest of the enumeration run
  final int deletesProgressPercent;
  /// Last updated timestamp
  final String lastUpdatedTimestamp;
  /// Estimate of time remaining for the enumeration run
  final int minutesRemaining;
  /// Change enumeration operation state
  final String operationState;
  /// Count of directories processed
  final double processedDirectoriesCount;
  /// Count of files processed
  final double processedFilesCount;
  /// Progress percentage for change enumeration run, excluding processing of deletes
  final int progressPercent;
  /// Timestamp when change enumeration started
  final String startedTimestamp;
  /// When non-zero, indicates an issue that is delaying change enumeration
  final int statusCode;
  /// Change enumeration total counts state
  final String totalCountsState;
  /// Total count of directories enumerated
  final double totalDirectoriesCount;
  /// Total count of files enumerated
  final double totalFilesCount;
  /// Total enumerated size in bytes
  final double totalSizeBytes;

  /// Creates a new [CloudEndpointChangeEnumerationActivityResponse].
  /// [deletesProgressPercent] Progress percentage for processing deletes. This is done separately from the rest of the enumeration run
  /// [lastUpdatedTimestamp] Last updated timestamp
  /// [minutesRemaining] Estimate of time remaining for the enumeration run
  /// [operationState] Change enumeration operation state
  /// [processedDirectoriesCount] Count of directories processed
  /// [processedFilesCount] Count of files processed
  /// [progressPercent] Progress percentage for change enumeration run, excluding processing of deletes
  /// [startedTimestamp] Timestamp when change enumeration started
  /// [statusCode] When non-zero, indicates an issue that is delaying change enumeration
  /// [totalCountsState] Change enumeration total counts state
  /// [totalDirectoriesCount] Total count of directories enumerated
  /// [totalFilesCount] Total count of files enumerated
  /// [totalSizeBytes] Total enumerated size in bytes
  CloudEndpointChangeEnumerationActivityResponse({
    required this.deletesProgressPercent,
    required this.lastUpdatedTimestamp,
    required this.minutesRemaining,
    required this.operationState,
    required this.processedDirectoriesCount,
    required this.processedFilesCount,
    required this.progressPercent,
    required this.startedTimestamp,
    required this.statusCode,
    required this.totalCountsState,
    required this.totalDirectoriesCount,
    required this.totalFilesCount,
    required this.totalSizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletesProgressPercent': deletesProgressPercent,
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'minutesRemaining': minutesRemaining,
      'operationState': operationState,
      'processedDirectoriesCount': processedDirectoriesCount,
      'processedFilesCount': processedFilesCount,
      'progressPercent': progressPercent,
      'startedTimestamp': startedTimestamp,
      'statusCode': statusCode,
      'totalCountsState': totalCountsState,
      'totalDirectoriesCount': totalDirectoriesCount,
      'totalFilesCount': totalFilesCount,
      'totalSizeBytes': totalSizeBytes,
    };
  }

  factory CloudEndpointChangeEnumerationActivityResponse.fromMap(Map<String, dynamic> map) {
    return CloudEndpointChangeEnumerationActivityResponse(
      deletesProgressPercent: map['deletesProgressPercent'] as int,
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
      minutesRemaining: map['minutesRemaining'] as int,
      operationState: map['operationState'] as String,
      processedDirectoriesCount: map['processedDirectoriesCount'] as double,
      processedFilesCount: map['processedFilesCount'] as double,
      progressPercent: map['progressPercent'] as int,
      startedTimestamp: map['startedTimestamp'] as String,
      statusCode: map['statusCode'] as int,
      totalCountsState: map['totalCountsState'] as String,
      totalDirectoriesCount: map['totalDirectoriesCount'] as double,
      totalFilesCount: map['totalFilesCount'] as double,
      totalSizeBytes: map['totalSizeBytes'] as double,
    );
  }
}

