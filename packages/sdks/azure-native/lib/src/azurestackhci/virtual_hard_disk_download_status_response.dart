// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The download status of the virtual hard disk
class VirtualHardDiskDownloadStatusResponse {
  /// The downloaded sized of the virtual hard disk in MB
  final pulumi.Input<double>? downloadedSizeInMB;
  /// The progress of the operation in percentage
  final pulumi.Input<double>? progressPercentage;
  /// The status of Uploading virtual hard disk [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [VirtualHardDiskDownloadStatusResponse].
  /// [downloadedSizeInMB] The downloaded sized of the virtual hard disk in MB
  /// [progressPercentage] The progress of the operation in percentage
  /// [status] The status of Uploading virtual hard disk [Succeeded, Failed, InProgress]
  const VirtualHardDiskDownloadStatusResponse({
    this.downloadedSizeInMB,
    this.progressPercentage,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadedSizeInMB': ?downloadedSizeInMB,
      'progressPercentage': ?progressPercentage,
      'status': status,
    };
  }

  factory VirtualHardDiskDownloadStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHardDiskDownloadStatusResponse(
      downloadedSizeInMB: (() { final guardedValue = map['downloadedSizeInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      progressPercentage: (() { final guardedValue = map['progressPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

