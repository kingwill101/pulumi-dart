// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'download_request.dart';

/// Represents the properties of Download Os job.
class DownloadOsJobProperties {
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// Download OS request.
  final pulumi.Input<DownloadRequest> downloadRequest;
  /// Job Type supported.
  /// Expected value is 'DownloadOs'.
  final pulumi.Input<String> jobType;

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
      'downloadRequest': pulumi.Input.mapInputValue<DownloadRequest, Map<String, dynamic>>(downloadRequest, (value) => value.toMap()),
      'jobType': jobType,
    };
  }

  factory DownloadOsJobProperties.fromMap(Map<String, dynamic> map) {
    return DownloadOsJobProperties(
      deploymentMode: map['deploymentMode'] == null ? null : (map['deploymentMode']! as String).input(),
      downloadRequest: (DownloadRequest.fromMap((map['downloadRequest'] as Map).cast<String, dynamic>())).input(),
      jobType: (map['jobType'] as String).input(),
    );
  }
}

