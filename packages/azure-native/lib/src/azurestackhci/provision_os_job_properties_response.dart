// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';
import 'provision_os_reported_properties_response.dart';
import 'provisioning_request_response.dart';

/// Represents the properties of an Azure Linux restricted operating environment Provision Os job.
class ProvisionOsJobPropertiesResponse {
  /// Deployment mode to trigger job.
  final String? deploymentMode;
  /// The UTC date and time at which the job completed.
  final String endTimeUtc;
  /// error details.
  final ErrorDetailResponse error;
  /// Unique, immutable job id.
  final String jobId;
  /// Job Type supported.
  /// Expected value is 'ProvisionOs'.
  final String jobType;
  /// Os Provisioning request.
  final ProvisioningRequestResponse provisioningRequest;
  /// Job provisioning state
  final String provisioningState;
  /// Reported Properties for Provision Os job
  final ProvisionOsReportedPropertiesResponse? reportedProperties;
  /// The UTC date and time at which the job started.
  final String startTimeUtc;
  /// Status of Edge device job.
  final String status;

  /// Creates a new [ProvisionOsJobPropertiesResponse].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [endTimeUtc] The UTC date and time at which the job completed.
  /// [error] error details.
  /// [jobId] Unique, immutable job id.
  /// [jobType] Job Type supported.
  /// [provisioningRequest] Os Provisioning request.
  /// [provisioningState] Job provisioning state
  /// [reportedProperties] Reported Properties for Provision Os job
  /// [startTimeUtc] The UTC date and time at which the job started.
  /// [status] Status of Edge device job.
  ProvisionOsJobPropertiesResponse({
    this.deploymentMode,
    required this.endTimeUtc,
    required this.error,
    required this.jobId,
    required this.jobType,
    required this.provisioningRequest,
    required this.provisioningState,
    this.reportedProperties,
    required this.startTimeUtc,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': ?deploymentMode,
      'endTimeUtc': endTimeUtc,
      'error': error.toMap(),
      'jobId': jobId,
      'jobType': jobType,
      'provisioningRequest': provisioningRequest.toMap(),
      'provisioningState': provisioningState,
      'reportedProperties': ?reportedProperties == null ? null : reportedProperties!.toMap(),
      'startTimeUtc': startTimeUtc,
      'status': status,
    };
  }

  factory ProvisionOsJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProvisionOsJobPropertiesResponse(
      deploymentMode: map['deploymentMode'] == null ? null : map['deploymentMode'] as String,
      endTimeUtc: map['endTimeUtc'] as String,
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      jobId: map['jobId'] as String,
      jobType: map['jobType'] as String,
      provisioningRequest: ProvisioningRequestResponse.fromMap((map['provisioningRequest'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      reportedProperties: map['reportedProperties'] == null ? null : ProvisionOsReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>()),
      startTimeUtc: map['startTimeUtc'] as String,
      status: map['status'] as String,
    );
  }
}

