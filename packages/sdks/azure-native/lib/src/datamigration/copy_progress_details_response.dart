// ignore_for_file: unused_element, unnecessary_cast


/// Details on progress of ADF copy activity
class CopyProgressDetailsResponse {
  /// Copy Duration in seconds
  final int copyDuration;
  /// Copy Start
  final String copyStart;
  /// Copy throughput in KBps
  final double copyThroughput;
  /// Bytes read
  final double dataRead;
  /// Bytes written
  final double dataWritten;
  /// Type of parallel copy (Dynamic range, Physical partition, none).
  final String parallelCopyType;
  /// Rows Copied
  final double rowsCopied;
  /// Rows read
  final double rowsRead;
  /// Status of the Copy activity (InProgress, Succeeded, Failed, Canceled).
  final String status;
  /// Table Name
  final String tableName;
  /// The degree of parallelization.
  final int usedParallelCopies;

  /// Creates a new [CopyProgressDetailsResponse].
  /// [copyDuration] Copy Duration in seconds
  /// [copyStart] Copy Start
  /// [copyThroughput] Copy throughput in KBps
  /// [dataRead] Bytes read
  /// [dataWritten] Bytes written
  /// [parallelCopyType] Type of parallel copy (Dynamic range, Physical partition, none).
  /// [rowsCopied] Rows Copied
  /// [rowsRead] Rows read
  /// [status] Status of the Copy activity (InProgress, Succeeded, Failed, Canceled).
  /// [tableName] Table Name
  /// [usedParallelCopies] The degree of parallelization.
  CopyProgressDetailsResponse({
    required this.copyDuration,
    required this.copyStart,
    required this.copyThroughput,
    required this.dataRead,
    required this.dataWritten,
    required this.parallelCopyType,
    required this.rowsCopied,
    required this.rowsRead,
    required this.status,
    required this.tableName,
    required this.usedParallelCopies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyDuration': copyDuration,
      'copyStart': copyStart,
      'copyThroughput': copyThroughput,
      'dataRead': dataRead,
      'dataWritten': dataWritten,
      'parallelCopyType': parallelCopyType,
      'rowsCopied': rowsCopied,
      'rowsRead': rowsRead,
      'status': status,
      'tableName': tableName,
      'usedParallelCopies': usedParallelCopies,
    };
  }

  factory CopyProgressDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CopyProgressDetailsResponse(
      copyDuration: map['copyDuration'] as int,
      copyStart: map['copyStart'] as String,
      copyThroughput: map['copyThroughput'] as double,
      dataRead: map['dataRead'] as double,
      dataWritten: map['dataWritten'] as double,
      parallelCopyType: map['parallelCopyType'] as String,
      rowsCopied: map['rowsCopied'] as double,
      rowsRead: map['rowsRead'] as double,
      status: map['status'] as String,
      tableName: map['tableName'] as String,
      usedParallelCopies: map['usedParallelCopies'] as int,
    );
  }
}

