// ignore_for_file: unused_element, unnecessary_cast

import 'edge_machine_collect_log_job_reported_properties_response.dart';
import 'error_detail_response.dart';

/// Properties for pausing a server in the cluster.
class EdgeMachineCollectLogJobPropertiesResponse {
  /// Deployment mode to trigger job.
  final String? deploymentMode;
  /// The UTC date and time at which the job completed.
  final String endTimeUtc;
  /// error details.
  final ErrorDetailResponse error;
  /// From date for log collection.
  final String fromDate;
  /// Unique, immutable job id.
  final String jobId;
  /// Job Type supported.
  /// Expected value is 'CollectLog'.
  final String jobType;
  /// To date for log collection.
  final String lastLogGenerated;
  /// Job provisioning state
  final String provisioningState;
  /// log collection job reported properties.
  final EdgeMachineCollectLogJobReportedPropertiesResponse reportedProperties;
  /// The UTC date and time at which the job started.
  final String startTimeUtc;
  /// Status of Edge device job.
  final String status;
  /// To date for log collection.
  final String toDate;

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
      'error': error.toMap(),
      'fromDate': fromDate,
      'jobId': jobId,
      'jobType': jobType,
      'lastLogGenerated': lastLogGenerated,
      'provisioningState': provisioningState,
      'reportedProperties': reportedProperties.toMap(),
      'startTimeUtc': startTimeUtc,
      'status': status,
      'toDate': toDate,
    };
  }

  factory EdgeMachineCollectLogJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachineCollectLogJobPropertiesResponse(
      deploymentMode: map['deploymentMode'] == null ? null : map['deploymentMode'] as String,
      endTimeUtc: map['endTimeUtc'] as String,
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      fromDate: map['fromDate'] as String,
      jobId: map['jobId'] as String,
      jobType: map['jobType'] as String,
      lastLogGenerated: map['lastLogGenerated'] as String,
      provisioningState: map['provisioningState'] as String,
      reportedProperties: EdgeMachineCollectLogJobReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>()),
      startTimeUtc: map['startTimeUtc'] as String,
      status: map['status'] as String,
      toDate: map['toDate'] as String,
    );
  }
}

