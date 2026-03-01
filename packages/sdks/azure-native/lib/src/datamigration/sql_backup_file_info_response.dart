// ignore_for_file: unused_element, unnecessary_cast


/// Information of backup file
class SqlBackupFileInfoResponse {
  /// Copy Duration in seconds
  final int copyDuration;
  /// Copy throughput in KBps
  final double copyThroughput;
  /// Bytes read
  final double dataRead;
  /// Bytes written
  final double dataWritten;
  /// Media family sequence number
  final int familySequenceNumber;
  /// File name.
  final String fileName;
  /// Status of the file. (Initial, Uploading, Uploaded, Restoring, Restored or Skipped)
  final String status;
  /// File size in bytes
  final double totalSize;

  /// Creates a new [SqlBackupFileInfoResponse].
  /// [copyDuration] Copy Duration in seconds
  /// [copyThroughput] Copy throughput in KBps
  /// [dataRead] Bytes read
  /// [dataWritten] Bytes written
  /// [familySequenceNumber] Media family sequence number
  /// [fileName] File name.
  /// [status] Status of the file. (Initial, Uploading, Uploaded, Restoring, Restored or Skipped)
  /// [totalSize] File size in bytes
  SqlBackupFileInfoResponse({
    required this.copyDuration,
    required this.copyThroughput,
    required this.dataRead,
    required this.dataWritten,
    required this.familySequenceNumber,
    required this.fileName,
    required this.status,
    required this.totalSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyDuration': copyDuration,
      'copyThroughput': copyThroughput,
      'dataRead': dataRead,
      'dataWritten': dataWritten,
      'familySequenceNumber': familySequenceNumber,
      'fileName': fileName,
      'status': status,
      'totalSize': totalSize,
    };
  }

  factory SqlBackupFileInfoResponse.fromMap(Map<String, dynamic> map) {
    return SqlBackupFileInfoResponse(
      copyDuration: map['copyDuration'] as int,
      copyThroughput: map['copyThroughput'] as double,
      dataRead: map['dataRead'] as double,
      dataWritten: map['dataWritten'] as double,
      familySequenceNumber: map['familySequenceNumber'] as int,
      fileName: map['fileName'] as String,
      status: map['status'] as String,
      totalSize: map['totalSize'] as double,
    );
  }
}

