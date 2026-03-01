// ignore_for_file: unused_element, unnecessary_cast

import 'download_request_response.dart';
import 'error_detail_response.dart';
import 'provision_os_reported_properties_response.dart';

/// Represents the properties of Download Os job.
class DownloadOsJobPropertiesResponse {
  /// Deployment mode to trigger job.
  final String? deploymentMode;
  /// Download OS request.
  final DownloadRequestResponse downloadRequest;
  /// The UTC date and time at which the job completed.
  final String endTimeUtc;
  /// error details.
  final ErrorDetailResponse error;
  /// Unique, immutable job id.
  final String jobId;
  /// Job Type supported.
  /// Expected value is 'DownloadOs'.
  final String jobType;
  /// Job provisioning state
  final String provisioningState;
  /// Reported Properties for Download Os job
  final ProvisionOsReportedPropertiesResponse? reportedProperties;
  /// The UTC date and time at which the job started.
  final String startTimeUtc;
  /// Status of Edge device job.
  final String status;

  /// Creates a new [DownloadOsJobPropertiesResponse].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [downloadRequest] Download OS request.
  /// [endTimeUtc] The UTC date and time at which the job completed.
  /// [error] error details.
  /// [jobId] Unique, immutable job id.
  /// [jobType] Job Type supported.
  /// [provisioningState] Job provisioning state
  /// [reportedProperties] Reported Properties for Download Os job
  /// [startTimeUtc] The UTC date and time at which the job started.
  /// [status] Status of Edge device job.
  DownloadOsJobPropertiesResponse({
    this.deploymentMode,
    required this.downloadRequest,
    required this.endTimeUtc,
    required this.error,
    required this.jobId,
    required this.jobType,
    required this.provisioningState,
    this.reportedProperties,
    required this.startTimeUtc,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': ?deploymentMode,
      'downloadRequest': downloadRequest.toMap(),
      'endTimeUtc': endTimeUtc,
      'error': error.toMap(),
      'jobId': jobId,
      'jobType': jobType,
      'provisioningState': provisioningState,
      'reportedProperties': ?reportedProperties == null ? null : reportedProperties!.toMap(),
      'startTimeUtc': startTimeUtc,
      'status': status,
    };
  }

  factory DownloadOsJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DownloadOsJobPropertiesResponse(
      deploymentMode: map['deploymentMode'] == null ? null : map['deploymentMode'] as String,
      downloadRequest: DownloadRequestResponse.fromMap((map['downloadRequest'] as Map).cast<String, dynamic>()),
      endTimeUtc: map['endTimeUtc'] as String,
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      jobId: map['jobId'] as String,
      jobType: map['jobType'] as String,
      provisioningState: map['provisioningState'] as String,
      reportedProperties: map['reportedProperties'] == null ? null : ProvisionOsReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>()),
      startTimeUtc: map['startTimeUtc'] as String,
      status: map['status'] as String,
    );
  }
}

