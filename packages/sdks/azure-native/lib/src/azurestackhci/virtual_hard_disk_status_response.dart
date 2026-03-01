// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_hard_disk_download_status_response.dart';
import 'virtual_hard_disk_status_provisioning_status_response.dart';
import 'virtual_hard_disk_upload_status_response.dart';

/// The observed state of virtual hard disks
class VirtualHardDiskStatusResponse {
  /// The download status of the virtual hard disk
  final VirtualHardDiskDownloadStatusResponse? downloadStatus;
  /// VirtualHardDisk provisioning error code
  final String? errorCode;
  /// Descriptive error message
  final String? errorMessage;
  /// Provisioning status of the vhd
  final VirtualHardDiskStatusProvisioningStatusResponse? provisioningStatus;
  /// The upload status of the virtual hard disk
  final VirtualHardDiskUploadStatusResponse? uploadStatus;

  /// Creates a new [VirtualHardDiskStatusResponse].
  /// [downloadStatus] The download status of the virtual hard disk
  /// [errorCode] VirtualHardDisk provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] Provisioning status of the vhd
  /// [uploadStatus] The upload status of the virtual hard disk
  VirtualHardDiskStatusResponse({
    this.downloadStatus,
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
    this.uploadStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadStatus': ?downloadStatus == null ? null : downloadStatus!.toMap(),
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?provisioningStatus == null ? null : provisioningStatus!.toMap(),
      'uploadStatus': ?uploadStatus == null ? null : uploadStatus!.toMap(),
    };
  }

  factory VirtualHardDiskStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHardDiskStatusResponse(
      downloadStatus: map['downloadStatus'] == null ? null : VirtualHardDiskDownloadStatusResponse.fromMap((map['downloadStatus'] as Map).cast<String, dynamic>()),
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : VirtualHardDiskStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
      uploadStatus: map['uploadStatus'] == null ? null : VirtualHardDiskUploadStatusResponse.fromMap((map['uploadStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

