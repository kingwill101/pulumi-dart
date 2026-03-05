// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';

/// DataBox Disk Copy Progress
class DataBoxDiskCopyProgressResponse {
  /// Available actions on the job.
  final pulumi.Input<List<String>> actions;
  /// Bytes copied during the copy of disk.
  final pulumi.Input<double> bytesCopied;
  /// Error, if any, in the stage
  final pulumi.Input<CloudErrorResponse> error;
  /// Indicates the percentage completed for the copy of the disk.
  final pulumi.Input<int> percentComplete;
  /// The serial number of the disk
  final pulumi.Input<String> serialNumber;
  /// The Status of the copy
  final pulumi.Input<String> status;

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
      'error': pulumi.Input.mapInputValue<CloudErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'percentComplete': percentComplete,
      'serialNumber': serialNumber,
      'status': status,
    };
  }

  factory DataBoxDiskCopyProgressResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskCopyProgressResponse(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      bytesCopied: pulumi.Input.fromValue(map['bytesCopied'] as double),
      error: pulumi.Input.fromValue(CloudErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      percentComplete: pulumi.Input.fromValue(map['percentComplete'] as int),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

