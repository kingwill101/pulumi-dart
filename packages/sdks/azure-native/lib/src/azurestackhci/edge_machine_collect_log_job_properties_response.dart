// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_machine_collect_log_job_reported_properties_response.dart';
import 'error_detail_response.dart';

/// Properties for pausing a server in the cluster.
class EdgeMachineCollectLogJobPropertiesResponse {
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// The UTC date and time at which the job completed.
  final pulumi.Input<String> endTimeUtc;
  /// error details.
  final pulumi.Input<ErrorDetailResponse> error;
  /// From date for log collection.
  final pulumi.Input<String> fromDate;
  /// Unique, immutable job id.
  final pulumi.Input<String> jobId;
  /// Job Type supported.
  /// Expected value is 'CollectLog'.
  final pulumi.Input<String> jobType;
  /// To date for log collection.
  final pulumi.Input<String> lastLogGenerated;
  /// Job provisioning state
  final pulumi.Input<String> provisioningState;
  /// log collection job reported properties.
  final pulumi.Input<EdgeMachineCollectLogJobReportedPropertiesResponse> reportedProperties;
  /// The UTC date and time at which the job started.
  final pulumi.Input<String> startTimeUtc;
  /// Status of Edge device job.
  final pulumi.Input<String> status;
  /// To date for log collection.
  final pulumi.Input<String> toDate;

  /// Creates a new [EdgeMachineCollectLogJobPropertiesResponse].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [endTimeUtc] The UTC date and time at which the job completed.
  /// [error] error details.
  /// [fromDate] From date for log collection.
  /// [jobId] Unique, immutable job id.
  /// [jobType] Job Type supported.
  /// [lastLogGenerated] To date for log collection.
  /// [provisioningState] Job provisioning state
  /// [reportedProperties] log collection job reported properties.
  /// [startTimeUtc] The UTC date and time at which the job started.
  /// [status] Status of Edge device job.
  /// [toDate] To date for log collection.
  EdgeMachineCollectLogJobPropertiesResponse({
    this.deploymentMode,
    required this.endTimeUtc,
    required this.error,
    required this.fromDate,
    required this.jobId,
    required this.jobType,
    required this.lastLogGenerated,
    required this.provisioningState,
    required this.reportedProperties,
    required this.startTimeUtc,
    required this.status,
    required this.toDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': ?deploymentMode,
      'endTimeUtc': endTimeUtc,
      'error': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'fromDate': fromDate,
      'jobId': jobId,
      'jobType': jobType,
      'lastLogGenerated': lastLogGenerated,
      'provisioningState': provisioningState,
      'reportedProperties': pulumi.Input.mapInputValue<EdgeMachineCollectLogJobReportedPropertiesResponse, Map<String, dynamic>>(reportedProperties, (value) => value.toMap()),
      'startTimeUtc': startTimeUtc,
      'status': status,
      'toDate': toDate,
    };
  }

  factory EdgeMachineCollectLogJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachineCollectLogJobPropertiesResponse(
      deploymentMode: map['deploymentMode'] == null ? null : (map['deploymentMode'] as String).input(),
      endTimeUtc: (map['endTimeUtc'] as String).input(),
      error: (ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      fromDate: (map['fromDate'] as String).input(),
      jobId: (map['jobId'] as String).input(),
      jobType: (map['jobType'] as String).input(),
      lastLogGenerated: (map['lastLogGenerated'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      reportedProperties: (EdgeMachineCollectLogJobReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>())).input(),
      startTimeUtc: (map['startTimeUtc'] as String).input(),
      status: (map['status'] as String).input(),
      toDate: (map['toDate'] as String).input(),
    );
  }
}

