// ignore_for_file: unused_element, unnecessary_cast

import 'download_request.dart';

/// Represents the properties of Download Os job.
class DownloadOsJobProperties {
  /// Deployment mode to trigger job.
  final String? deploymentMode;
  /// Download OS request.
  final DownloadRequest downloadRequest;
  /// Job Type supported.
  /// Expected value is 'DownloadOs'.
  final String jobType;

  /// Creates a new [DownloadOsJobProperties].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [downloadRequest] Download OS request.
  /// [jobType] Job Type supported.
  DownloadOsJobProperties({
    this.deploymentMode,
    required this.downloadRequest,
    required this.jobType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': ?deploymentMode,
      'downloadRequest': downloadRequest.toMap(),
      'jobType': jobType,
    };
  }

  factory DownloadOsJobProperties.fromMap(Map<String, dynamic> map) {
    return DownloadOsJobProperties(
      deploymentMode: map['deploymentMode'] == null ? null : map['deploymentMode'] as String,
      downloadRequest: DownloadRequest.fromMap((map['downloadRequest'] as Map).cast<String, dynamic>()),
      jobType: map['jobType'] as String,
    );
  }
}

