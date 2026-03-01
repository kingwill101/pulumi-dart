// ignore_for_file: unused_element, unnecessary_cast

import 'log_collection_reported_properties_response.dart';

/// Represents the properties of an HCI Collect Log job.
class HciCollectLogJobPropertiesResponse {
  /// Deployment mode to trigger job.
  final String? deploymentMode;
  /// The UTC date and time at which the job completed.
  final String endTimeUtc;
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
  final LogCollectionReportedPropertiesResponse reportedProperties;
  /// The UTC date and time at which the job started.
  final String startTimeUtc;
  /// Status of Edge device job.
  final String status;
  /// To date for log collection.
  final String toDate;

  /// Creates a new [HciCollectLogJobPropertiesResponse].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [endTimeUtc] The UTC date and time at which the job completed.
  /// [fromDate] From date for log collection.
  /// [jobId] Unique, immutable job id.
  /// [jobType] Job Type supported.
  /// [lastLogGenerated] To date for log collection.
  /// [provisioningState] Job provisioning state
  /// [reportedProperties] log collection job reported properties.
  /// [startTimeUtc] The UTC date and time at which the job started.
  /// [status] Status of Edge device job.
  /// [toDate] To date for log collection.
  HciCollectLogJobPropertiesResponse({
    this.deploymentMode,
    required this.endTimeUtc,
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

  factory HciCollectLogJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HciCollectLogJobPropertiesResponse(
      deploymentMode: map['deploymentMode'] == null ? null : map['deploymentMode'] as String,
      endTimeUtc: map['endTimeUtc'] as String,
      fromDate: map['fromDate'] as String,
      jobId: map['jobId'] as String,
      jobType: map['jobType'] as String,
      lastLogGenerated: map['lastLogGenerated'] as String,
      provisioningState: map['provisioningState'] as String,
      reportedProperties: LogCollectionReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>()),
      startTimeUtc: map['startTimeUtc'] as String,
      status: map['status'] as String,
      toDate: map['toDate'] as String,
    );
  }
}

