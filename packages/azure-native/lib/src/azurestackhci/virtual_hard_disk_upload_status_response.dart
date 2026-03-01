// ignore_for_file: unused_element, unnecessary_cast


/// The upload status of the virtual hard disk
class VirtualHardDiskUploadStatusResponse {
  /// VirtualHardDisk upload error code
  final String? errorCode;
  /// Descriptive upload error message
  final String? errorMessage;
  /// The progress of the operation in percentage
  final double? progressPercentage;
  /// The status of Uploading virtual hard disk [Succeeded, Failed, InProgress]
  final String status;
  /// The uploaded sized of the virtual hard disk in MB
  final double? uploadedSizeInMB;

  /// Creates a new [VirtualHardDiskUploadStatusResponse].
  /// [errorCode] VirtualHardDisk upload error code
  /// [errorMessage] Descriptive upload error message
  /// [progressPercentage] The progress of the operation in percentage
  /// [status] The status of Uploading virtual hard disk [Succeeded, Failed, InProgress]
  /// [uploadedSizeInMB] The uploaded sized of the virtual hard disk in MB
  VirtualHardDiskUploadStatusResponse({
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
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      progressPercentage: map['progressPercentage'] == null ? null : map['progressPercentage'] as double,
      status: map['status'] as String,
      uploadedSizeInMB: map['uploadedSizeInMB'] == null ? null : map['uploadedSizeInMB'] as double,
    );
  }
}

