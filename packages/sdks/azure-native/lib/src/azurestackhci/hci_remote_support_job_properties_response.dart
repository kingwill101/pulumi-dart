// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_support_job_reported_properties_response.dart';

/// Represents the properties of a remote support job for HCI.
class HciRemoteSupportJobPropertiesResponse {
  /// Remote support access level.
  final pulumi.Input<String> accessLevel;
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// The UTC date and time at which the job completed.
  final pulumi.Input<String> endTimeUtc;
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
  final pulumi.Input<RemoteSupportJobReportedPropertiesResponse> reportedProperties;
  /// The UTC date and time at which the job started.
  final pulumi.Input<String> startTimeUtc;
  /// Status of Edge device job.
  final pulumi.Input<String> status;
  /// Remote support type.
  final pulumi.Input<String> type;

  /// Creates a new [HciRemoteSupportJobPropertiesResponse].
  /// [accessLevel] Remote support access level.
  /// [deploymentMode] Deployment mode to trigger job.
  /// [endTimeUtc] The UTC date and time at which the job completed.
  /// [expirationTimestamp] Remote support expiration timestamp.
  /// [jobId] Unique, immutable job id.
  /// [jobType] Job Type supported.
  /// [provisioningState] Job provisioning state
  /// [reportedProperties] log collection job reported properties.
  /// [startTimeUtc] The UTC date and time at which the job started.
  /// [status] Status of Edge device job.
  /// [type] Remote support type.
  HciRemoteSupportJobPropertiesResponse({
    required this.accessLevel,
    this.deploymentMode,
    required this.endTimeUtc,
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
      'expirationTimestamp': expirationTimestamp,
      'jobId': jobId,
      'jobType': jobType,
      'provisioningState': provisioningState,
      'reportedProperties': pulumi.Input.mapInputValue<RemoteSupportJobReportedPropertiesResponse, Map<String, dynamic>>(reportedProperties, (value) => value.toMap()),
      'startTimeUtc': startTimeUtc,
      'status': status,
      'type': type,
    };
  }

  factory HciRemoteSupportJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HciRemoteSupportJobPropertiesResponse(
      accessLevel: (map['accessLevel'] as String).input(),
      deploymentMode: map['deploymentMode'] == null ? null : (map['deploymentMode']! as String).input(),
      endTimeUtc: (map['endTimeUtc'] as String).input(),
      expirationTimestamp: (map['expirationTimestamp'] as String).input(),
      jobId: (map['jobId'] as String).input(),
      jobType: (map['jobType'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      reportedProperties: (RemoteSupportJobReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>())).input(),
      startTimeUtc: (map['startTimeUtc'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

