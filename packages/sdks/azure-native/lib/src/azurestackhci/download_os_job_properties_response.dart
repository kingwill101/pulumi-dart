// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'download_request_response.dart';
import 'error_detail_response.dart';
import 'provision_os_reported_properties_response.dart';

/// Represents the properties of Download Os job.
class DownloadOsJobPropertiesResponse {
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// Download OS request.
  final pulumi.Input<DownloadRequestResponse> downloadRequest;
  /// The UTC date and time at which the job completed.
  final pulumi.Input<String> endTimeUtc;
  /// error details.
  final pulumi.Input<ErrorDetailResponse> error;
  /// Unique, immutable job id.
  final pulumi.Input<String> jobId;
  /// Job Type supported.
  /// Expected value is 'DownloadOs'.
  final pulumi.Input<String> jobType;
  /// Job provisioning state
  final pulumi.Input<String> provisioningState;
  /// Reported Properties for Download Os job
  final pulumi.Input<ProvisionOsReportedPropertiesResponse>? reportedProperties;
  /// The UTC date and time at which the job started.
  final pulumi.Input<String> startTimeUtc;
  /// Status of Edge device job.
  final pulumi.Input<String> status;

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
      'downloadRequest': pulumi.Input.mapInputValue<DownloadRequestResponse, Map<String, dynamic>>(downloadRequest, (value) => value.toMap()),
      'endTimeUtc': endTimeUtc,
      'error': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'jobId': jobId,
      'jobType': jobType,
      'provisioningState': provisioningState,
      'reportedProperties': ?pulumi.Input.mapOptionalInputValue<ProvisionOsReportedPropertiesResponse, Map<String, dynamic>>(reportedProperties, (value) => value.toMap()),
      'startTimeUtc': startTimeUtc,
      'status': status,
    };
  }

  factory DownloadOsJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DownloadOsJobPropertiesResponse(
      deploymentMode: map['deploymentMode'] == null ? null : (map['deploymentMode']! as String).input(),
      downloadRequest: (DownloadRequestResponse.fromMap((map['downloadRequest'] as Map).cast<String, dynamic>())).input(),
      endTimeUtc: (map['endTimeUtc'] as String).input(),
      error: (ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      jobId: (map['jobId'] as String).input(),
      jobType: (map['jobType'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      reportedProperties: map['reportedProperties'] == null ? null : (ProvisionOsReportedPropertiesResponse.fromMap((map['reportedProperties']! as Map).cast<String, dynamic>())).input(),
      startTimeUtc: (map['startTimeUtc'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

