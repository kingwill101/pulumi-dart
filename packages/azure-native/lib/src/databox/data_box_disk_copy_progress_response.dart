// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_error_response.dart';

/// DataBox Disk Copy Progress
class DataBoxDiskCopyProgressResponse {
  /// Available actions on the job.
  final List<String> actions;
  /// Bytes copied during the copy of disk.
  final double bytesCopied;
  /// Error, if any, in the stage
  final CloudErrorResponse error;
  /// Indicates the percentage completed for the copy of the disk.
  final int percentComplete;
  /// The serial number of the disk
  final String serialNumber;
  /// The Status of the copy
  final String status;

  /// Creates a new [DataBoxDiskCopyProgressResponse].
  /// [actions] Available actions on the job.
  /// [bytesCopied] Bytes copied during the copy of disk.
  /// [error] Error, if any, in the stage
  /// [percentComplete] Indicates the percentage completed for the copy of the disk.
  /// [serialNumber] The serial number of the disk
  /// [status] The Status of the copy
  DataBoxDiskCopyProgressResponse({
    required this.actions,
    required this.bytesCopied,
    required this.error,
    required this.percentComplete,
    required this.serialNumber,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'bytesCopied': bytesCopied,
      'error': error.toMap(),
      'percentComplete': percentComplete,
      'serialNumber': serialNumber,
      'status': status,
    };
  }

  factory DataBoxDiskCopyProgressResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskCopyProgressResponse(
      actions: (map['actions'] as List).cast<String>(),
      bytesCopied: map['bytesCopied'] as double,
      error: CloudErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      percentComplete: map['percentComplete'] as int,
      serialNumber: map['serialNumber'] as String,
      status: map['status'] as String,
    );
  }
}

