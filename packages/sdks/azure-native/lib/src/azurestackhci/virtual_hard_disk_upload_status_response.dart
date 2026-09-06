// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The upload status of the virtual hard disk
class VirtualHardDiskUploadStatusResponse {
  /// VirtualHardDisk upload error code
  final pulumi.Input<String?>? errorCode;
  /// Descriptive upload error message
  final pulumi.Input<String?>? errorMessage;
  /// The progress of the operation in percentage
  final pulumi.Input<double?>? progressPercentage;
  /// The status of Uploading virtual hard disk [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;
  /// The uploaded sized of the virtual hard disk in MB
  final pulumi.Input<double?>? uploadedSizeInMB;

  /// Creates a new [VirtualHardDiskUploadStatusResponse].
  /// [errorCode] VirtualHardDisk upload error code
  /// [errorMessage] Descriptive upload error message
  /// [progressPercentage] The progress of the operation in percentage
  /// [status] The status of Uploading virtual hard disk [Succeeded, Failed, InProgress]
  /// [uploadedSizeInMB] The uploaded sized of the virtual hard disk in MB
  const VirtualHardDiskUploadStatusResponse({
    this.errorCode,
    this.errorMessage,
    this.progressPercentage,
    required this.status,
    this.uploadedSizeInMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'progressPercentage': ?progressPercentage,
      'status': status,
      'uploadedSizeInMB': ?uploadedSizeInMB,
    };
  }

  factory VirtualHardDiskUploadStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHardDiskUploadStatusResponse(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      progressPercentage: (() { final guardedValue = map['progressPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      uploadedSizeInMB: (() { final guardedValue = map['uploadedSizeInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
