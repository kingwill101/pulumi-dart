// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_machine_remote_support_job_reported_properties_response.dart';
import 'error_detail_response.dart';

/// Properties for adding a server in the cluster.
class EdgeMachineRemoteSupportJobPropertiesResponse {
  /// Remote support access level.
  final pulumi.Input<String> accessLevel;
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// The UTC date and time at which the job completed.
  final pulumi.Input<String> endTimeUtc;
  /// error details.
  final pulumi.Input<ErrorDetailResponse> error;
  /// Remote support expiration timestamp.
  final pulumi.Input<String> expirationTimestamp;
  /// Unique, immutable job id.
  final pulumi.Input<String> jobId;
  /// Job Type supported.
  /// Expected value is 'RemoteSupport'.
  final pulumi.Input<String> jobType;
  /// Job provisioning state
  final pulumi.Input<String> provisioningState;
  /// log collection job reported properties.
  final pulumi.Input<EdgeMachineRemoteSupportJobReportedPropertiesResponse> reportedProperties;
  /// The UTC date and time at which the job started.
  final pulumi.Input<String> startTimeUtc;
  /// Status of Edge device job.
  final pulumi.Input<String> status;
  /// Remote support type.
  final pulumi.Input<String> type;

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
      'error': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'expirationTimestamp': expirationTimestamp,
      'jobId': jobId,
      'jobType': jobType,
      'provisioningState': provisioningState,
      'reportedProperties': pulumi.Input.mapInputValue<EdgeMachineRemoteSupportJobReportedPropertiesResponse, Map<String, dynamic>>(reportedProperties, (value) => value.toMap()),
      'startTimeUtc': startTimeUtc,
      'status': status,
      'type': type,
    };
  }

  factory EdgeMachineRemoteSupportJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachineRemoteSupportJobPropertiesResponse(
      accessLevel: (map['accessLevel'] as String).input(),
      deploymentMode: map['deploymentMode'] == null ? null : (map['deploymentMode'] as String).input(),
      endTimeUtc: (map['endTimeUtc'] as String).input(),
      error: (ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      expirationTimestamp: (map['expirationTimestamp'] as String).input(),
      jobId: (map['jobId'] as String).input(),
      jobType: (map['jobType'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      reportedProperties: (EdgeMachineRemoteSupportJobReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>())).input(),
      startTimeUtc: (map['startTimeUtc'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

