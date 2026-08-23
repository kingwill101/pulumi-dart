// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_collection_reported_properties_response.dart';

/// Represents the properties of an HCI Collect Log job.
class HciCollectLogJobPropertiesResponse {
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// The UTC date and time at which the job completed.
  final pulumi.Input<String> endTimeUtc;
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
  final pulumi.Input<LogCollectionReportedPropertiesResponse> reportedProperties;
  /// The UTC date and time at which the job started.
  final pulumi.Input<String> startTimeUtc;
  /// Status of Edge device job.
  final pulumi.Input<String> status;
  /// To date for log collection.
  final pulumi.Input<String> toDate;

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
  const HciCollectLogJobPropertiesResponse({
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
      'reportedProperties': pulumi.Input.mapInputValue<LogCollectionReportedPropertiesResponse, Map<String, dynamic>>(reportedProperties, (value) => value.toMap()),
      'startTimeUtc': startTimeUtc,
      'status': status,
      'toDate': toDate,
    };
  }

  factory HciCollectLogJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HciCollectLogJobPropertiesResponse(
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTimeUtc: pulumi.Input.fromValue(map['endTimeUtc'] as String),
      fromDate: pulumi.Input.fromValue(map['fromDate'] as String),
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      lastLogGenerated: pulumi.Input.fromValue(map['lastLogGenerated'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      reportedProperties: pulumi.Input.fromValue(LogCollectionReportedPropertiesResponse.fromMap((map['reportedProperties']! as Map).cast<String, dynamic>())),
      startTimeUtc: pulumi.Input.fromValue(map['startTimeUtc'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      toDate: pulumi.Input.fromValue(map['toDate'] as String),
    );
  }
}
