// ignore_for_file: unused_element, unnecessary_cast


/// The download status of the virtual hard disk
class VirtualHardDiskDownloadStatusResponse {
  /// The downloaded sized of the virtual hard disk in MB
  final double? downloadedSizeInMB;
  /// The progress of the operation in percentage
  final double? progressPercentage;
  /// The status of Uploading virtual hard disk [Succeeded, Failed, InProgress]
  final String status;

  /// Creates a new [VirtualHardDiskDownloadStatusResponse].
  /// [downloadedSizeInMB] The downloaded sized of the virtual hard disk in MB
  /// [progressPercentage] The progress of the operation in percentage
  /// [status] The status of Uploading virtual hard disk [Succeeded, Failed, InProgress]
  VirtualHardDiskDownloadStatusResponse({
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
      downloadedSizeInMB: map['downloadedSizeInMB'] == null ? null : map['downloadedSizeInMB'] as double,
      progressPercentage: map['progressPercentage'] == null ? null : map['progressPercentage'] as double,
      status: map['status'] as String,
    );
  }
}

