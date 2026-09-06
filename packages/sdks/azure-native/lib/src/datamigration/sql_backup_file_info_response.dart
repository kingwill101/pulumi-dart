// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information of backup file
class SqlBackupFileInfoResponse {
  /// Copy Duration in seconds
  final pulumi.Input<int> copyDuration;
  /// Copy throughput in KBps
  final pulumi.Input<double> copyThroughput;
  /// Bytes read
  final pulumi.Input<double> dataRead;
  /// Bytes written
  final pulumi.Input<double> dataWritten;
  /// Media family sequence number
  final pulumi.Input<int> familySequenceNumber;
  /// File name.
  final pulumi.Input<String> fileName;
  /// Status of the file. (Initial, Uploading, Uploaded, Restoring, Restored or Skipped)
  final pulumi.Input<String> status;
  /// File size in bytes
  final pulumi.Input<double> totalSize;

  /// Creates a new [SqlBackupFileInfoResponse].
  /// [copyDuration] Copy Duration in seconds
  /// [copyThroughput] Copy throughput in KBps
  /// [dataRead] Bytes read
  /// [dataWritten] Bytes written
  /// [familySequenceNumber] Media family sequence number
  /// [fileName] File name.
  /// [status] Status of the file. (Initial, Uploading, Uploaded, Restoring, Restored or Skipped)
  /// [totalSize] File size in bytes
  const SqlBackupFileInfoResponse({
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
      copyDuration: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['copyDuration'])),
      copyThroughput: pulumi.Input.fromValue((map['copyThroughput'] as num).toDouble()),
      dataRead: pulumi.Input.fromValue((map['dataRead'] as num).toDouble()),
      dataWritten: pulumi.Input.fromValue((map['dataWritten'] as num).toDouble()),
      familySequenceNumber: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['familySequenceNumber'])),
      fileName: pulumi.Input.fromValue(map['fileName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      totalSize: pulumi.Input.fromValue((map['totalSize'] as num).toDouble()),
    );
  }
}
