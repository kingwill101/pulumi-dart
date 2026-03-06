// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hard_disk_download_status_response.dart';
import 'virtual_hard_disk_status_provisioning_status_response.dart';
import 'virtual_hard_disk_upload_status_response.dart';

/// The observed state of virtual hard disks
class VirtualHardDiskStatusResponse {
  /// The download status of the virtual hard disk
  final pulumi.Input<VirtualHardDiskDownloadStatusResponse>? downloadStatus;
  /// VirtualHardDisk provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// Provisioning status of the vhd
  final pulumi.Input<VirtualHardDiskStatusProvisioningStatusResponse>? provisioningStatus;
  /// The upload status of the virtual hard disk
  final pulumi.Input<VirtualHardDiskUploadStatusResponse>? uploadStatus;

  /// Creates a new [VirtualHardDiskStatusResponse].
  /// [downloadStatus] The download status of the virtual hard disk
  /// [errorCode] VirtualHardDisk provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] Provisioning status of the vhd
  /// [uploadStatus] The upload status of the virtual hard disk
  const VirtualHardDiskStatusResponse({
    this.downloadStatus,
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
    this.uploadStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadStatus': ?pulumi.Input.mapOptionalInputValue<VirtualHardDiskDownloadStatusResponse, Map<String, dynamic>>(downloadStatus, (value) => value.toMap()),
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<VirtualHardDiskStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
      'uploadStatus': ?pulumi.Input.mapOptionalInputValue<VirtualHardDiskUploadStatusResponse, Map<String, dynamic>>(uploadStatus, (value) => value.toMap()),
    };
  }

  factory VirtualHardDiskStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHardDiskStatusResponse(
      downloadStatus: (() { final guardedValue = map['downloadStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualHardDiskDownloadStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualHardDiskStatusProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uploadStatus: (() { final guardedValue = map['uploadStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualHardDiskUploadStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

