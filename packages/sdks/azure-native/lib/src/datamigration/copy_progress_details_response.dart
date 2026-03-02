// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details on progress of ADF copy activity
class CopyProgressDetailsResponse {
  /// Copy Duration in seconds
  final pulumi.Input<int> copyDuration;
  /// Copy Start
  final pulumi.Input<String> copyStart;
  /// Copy throughput in KBps
  final pulumi.Input<double> copyThroughput;
  /// Bytes read
  final pulumi.Input<double> dataRead;
  /// Bytes written
  final pulumi.Input<double> dataWritten;
  /// Type of parallel copy (Dynamic range, Physical partition, none).
  final pulumi.Input<String> parallelCopyType;
  /// Rows Copied
  final pulumi.Input<double> rowsCopied;
  /// Rows read
  final pulumi.Input<double> rowsRead;
  /// Status of the Copy activity (InProgress, Succeeded, Failed, Canceled).
  final pulumi.Input<String> status;
  /// Table Name
  final pulumi.Input<String> tableName;
  /// The degree of parallelization.
  final pulumi.Input<int> usedParallelCopies;

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
      copyDuration: (map['copyDuration'] as int).input(),
      copyStart: (map['copyStart'] as String).input(),
      copyThroughput: (map['copyThroughput'] as double).input(),
      dataRead: (map['dataRead'] as double).input(),
      dataWritten: (map['dataWritten'] as double).input(),
      parallelCopyType: (map['parallelCopyType'] as String).input(),
      rowsCopied: (map['rowsCopied'] as double).input(),
      rowsRead: (map['rowsRead'] as double).input(),
      status: (map['status'] as String).input(),
      tableName: (map['tableName'] as String).input(),
      usedParallelCopies: (map['usedParallelCopies'] as int).input(),
    );
  }
}

