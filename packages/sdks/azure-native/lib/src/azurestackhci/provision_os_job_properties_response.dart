// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'provision_os_reported_properties_response.dart';
import 'provisioning_request_response.dart';

/// Represents the properties of an Azure Linux restricted operating environment Provision Os job.
class ProvisionOsJobPropertiesResponse {
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// The UTC date and time at which the job completed.
  final pulumi.Input<String> endTimeUtc;
  /// error details.
  final pulumi.Input<ErrorDetailResponse> error;
  /// Unique, immutable job id.
  final pulumi.Input<String> jobId;
  /// Job Type supported.
  /// Expected value is 'ProvisionOs'.
  final pulumi.Input<String> jobType;
  /// Os Provisioning request.
  final pulumi.Input<ProvisioningRequestResponse> provisioningRequest;
  /// Job provisioning state
  final pulumi.Input<String> provisioningState;
  /// Reported Properties for Provision Os job
  final pulumi.Input<ProvisionOsReportedPropertiesResponse>? reportedProperties;
  /// The UTC date and time at which the job started.
  final pulumi.Input<String> startTimeUtc;
  /// Status of Edge device job.
  final pulumi.Input<String> status;

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
      'error': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'jobId': jobId,
      'jobType': jobType,
      'provisioningRequest': pulumi.Input.mapInputValue<ProvisioningRequestResponse, Map<String, dynamic>>(provisioningRequest, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'reportedProperties': ?pulumi.Input.mapOptionalInputValue<ProvisionOsReportedPropertiesResponse, Map<String, dynamic>>(reportedProperties, (value) => value.toMap()),
      'startTimeUtc': startTimeUtc,
      'status': status,
    };
  }

  factory ProvisionOsJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProvisionOsJobPropertiesResponse(
      deploymentMode: map['deploymentMode'] == null ? null : (map['deploymentMode'] as String).input(),
      endTimeUtc: (map['endTimeUtc'] as String).input(),
      error: (ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      jobId: (map['jobId'] as String).input(),
      jobType: (map['jobType'] as String).input(),
      provisioningRequest: (ProvisioningRequestResponse.fromMap((map['provisioningRequest'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      reportedProperties: map['reportedProperties'] == null ? null : (ProvisionOsReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>())).input(),
      startTimeUtc: (map['startTimeUtc'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

