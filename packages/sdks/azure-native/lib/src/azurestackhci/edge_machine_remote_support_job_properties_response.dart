// ignore_for_file: unused_element, unnecessary_cast

import 'edge_machine_remote_support_job_reported_properties_response.dart';
import 'error_detail_response.dart';

/// Properties for adding a server in the cluster.
class EdgeMachineRemoteSupportJobPropertiesResponse {
  /// Remote support access level.
  final String accessLevel;
  /// Deployment mode to trigger job.
  final String? deploymentMode;
  /// The UTC date and time at which the job completed.
  final String endTimeUtc;
  /// error details.
  final ErrorDetailResponse error;
  /// Remote support expiration timestamp.
  final String expirationTimestamp;
  /// Unique, immutable job id.
  final String jobId;
  /// Job Type supported.
  /// Expected value is 'RemoteSupport'.
  final String jobType;
  /// Job provisioning state
  final String provisioningState;
  /// log collection job reported properties.
  final EdgeMachineRemoteSupportJobReportedPropertiesResponse reportedProperties;
  /// The UTC date and time at which the job started.
  final String startTimeUtc;
  /// Status of Edge device job.
  final String status;
  /// Remote support type.
  final String type;

  /// Creates a new [EdgeMachineRemoteSupportJobPropertiesResponse].
  /// [accessLevel] Remote support access level.
  /// [deploymentMode] Deployment mode to trigger job.
  /// [endTimeUtc] The UTC date and time at which the job completed.
  /// [error] error details.
  /// [expirationTimestamp] Remote support expiration timestamp.
  /// [jobId] Unique, immutable job id.
  /// [jobType] Job Type supported.
  /// [provisioningState] Job provisioning state
  /// [reportedProperties] log collection job reported properties.
  /// [startTimeUtc] The UTC date and time at which the job started.
  /// [status] Status of Edge device job.
  /// [type] Remote support type.
  EdgeMachineRemoteSupportJobPropertiesResponse({
    required this.accessLevel,
    this.deploymentMode,
    required this.endTimeUtc,
    required this.error,
    required this.expirationTimestamp,
    required this.jobId,
    required this.jobType,
    required this.provisioningState,
    required this.reportedProperties,
    required this.startTimeUtc,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': accessLevel,
      'deploymentMode': ?deploymentMode,
      'endTimeUtc': endTimeUtc,
      'error': error.toMap(),
      'expirationTimestamp': expirationTimestamp,
      'jobId': jobId,
      'jobType': jobType,
      'provisioningState': provisioningState,
      'reportedProperties': reportedProperties.toMap(),
      'startTimeUtc': startTimeUtc,
      'status': status,
      'type': type,
    };
  }

  factory EdgeMachineRemoteSupportJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachineRemoteSupportJobPropertiesResponse(
      accessLevel: map['accessLevel'] as String,
      deploymentMode: map['deploymentMode'] == null ? null : map['deploymentMode'] as String,
      endTimeUtc: map['endTimeUtc'] as String,
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      expirationTimestamp: map['expirationTimestamp'] as String,
      jobId: map['jobId'] as String,
      jobType: map['jobType'] as String,
      provisioningState: map['provisioningState'] as String,
      reportedProperties: EdgeMachineRemoteSupportJobReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>()),
      startTimeUtc: map['startTimeUtc'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

