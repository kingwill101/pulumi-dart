// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiIndexingJobDataSourcesIndexedDataSource {
  /// Timestamp when data source completed indexing
  final String completedAt;
  /// UUID of the indexed data source
  final String dataSourceUuid;
  /// Detailed error description
  final String errorDetails;
  /// Error message if indexing failed
  final String errorMsg;
  /// Total count of items that have failed
  final String failedItemCount;
  /// Total count of files that have been indexed
  final String indexedFileCount;
  /// Total count of items that have been indexed
  final String indexedItemCount;
  /// Total count of items that have been removed
  final String removedItemCount;
  /// Total count of items that have been skipped
  final String skippedItemCount;
  /// Timestamp when data source started indexing
  final String startedAt;
  /// Status of the indexed data source
  final String status;
  /// Total size of files in data source in bytes
  final String totalBytes;
  /// Total size of indexed files in bytes
  final String totalBytesIndexed;
  /// Total file count in the data source
  final String totalFileCount;

  /// Creates a new [GetGradientaiIndexingJobDataSourcesIndexedDataSource].
  /// [completedAt] Timestamp when data source completed indexing
  /// [dataSourceUuid] UUID of the indexed data source
  /// [errorDetails] Detailed error description
  /// [errorMsg] Error message if indexing failed
  /// [failedItemCount] Total count of items that have failed
  /// [indexedFileCount] Total count of files that have been indexed
  /// [indexedItemCount] Total count of items that have been indexed
  /// [removedItemCount] Total count of items that have been removed
  /// [skippedItemCount] Total count of items that have been skipped
  /// [startedAt] Timestamp when data source started indexing
  /// [status] Status of the indexed data source
  /// [totalBytes] Total size of files in data source in bytes
  /// [totalBytesIndexed] Total size of indexed files in bytes
  /// [totalFileCount] Total file count in the data source
  GetGradientaiIndexingJobDataSourcesIndexedDataSource({
    required this.completedAt,
    required this.dataSourceUuid,
    required this.errorDetails,
    required this.errorMsg,
    required this.failedItemCount,
    required this.indexedFileCount,
    required this.indexedItemCount,
    required this.removedItemCount,
    required this.skippedItemCount,
    required this.startedAt,
    required this.status,
    required this.totalBytes,
    required this.totalBytesIndexed,
    required this.totalFileCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedAt': completedAt,
      'dataSourceUuid': dataSourceUuid,
      'errorDetails': errorDetails,
      'errorMsg': errorMsg,
      'failedItemCount': failedItemCount,
      'indexedFileCount': indexedFileCount,
      'indexedItemCount': indexedItemCount,
      'removedItemCount': removedItemCount,
      'skippedItemCount': skippedItemCount,
      'startedAt': startedAt,
      'status': status,
      'totalBytes': totalBytes,
      'totalBytesIndexed': totalBytesIndexed,
      'totalFileCount': totalFileCount,
    };
  }

  factory GetGradientaiIndexingJobDataSourcesIndexedDataSource.fromMap(Map<String, dynamic> map) {
    return GetGradientaiIndexingJobDataSourcesIndexedDataSource(
      completedAt: map['completedAt'] as String,
      dataSourceUuid: map['dataSourceUuid'] as String,
      errorDetails: map['errorDetails'] as String,
      errorMsg: map['errorMsg'] as String,
      failedItemCount: map['failedItemCount'] as String,
      indexedFileCount: map['indexedFileCount'] as String,
      indexedItemCount: map['indexedItemCount'] as String,
      removedItemCount: map['removedItemCount'] as String,
      skippedItemCount: map['skippedItemCount'] as String,
      startedAt: map['startedAt'] as String,
      status: map['status'] as String,
      totalBytes: map['totalBytes'] as String,
      totalBytesIndexed: map['totalBytesIndexed'] as String,
      totalFileCount: map['totalFileCount'] as String,
    );
  }
}

