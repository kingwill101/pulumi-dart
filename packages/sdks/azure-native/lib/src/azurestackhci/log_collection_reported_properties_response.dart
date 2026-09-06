// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ece_action_status_response.dart';
import 'log_collection_job_session_response.dart';

/// Represents the reported properties of a log collection job.
class LogCollectionReportedPropertiesResponse {
  /// Deployment status of job.
  final pulumi.Input<EceActionStatusResponse> deploymentStatus;
  /// Details of the log collection session.
  final pulumi.Input<List<LogCollectionJobSessionResponse>> logCollectionSessionDetails;
  /// The percentage of the job that is complete.
  final pulumi.Input<int> percentComplete;
  /// Validation status of job.
  final pulumi.Input<EceActionStatusResponse> validationStatus;

  /// Creates a new [LogCollectionReportedPropertiesResponse].
  /// [deploymentStatus] Deployment status of job.
  /// [logCollectionSessionDetails] Details of the log collection session.
  /// [percentComplete] The percentage of the job that is complete.
  /// [validationStatus] Validation status of job.
  const LogCollectionReportedPropertiesResponse({
    required this.deploymentStatus,
    required this.logCollectionSessionDetails,
    required this.percentComplete,
    required this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStatus': pulumi.Input.mapInputValue<EceActionStatusResponse, Map<String, dynamic>>(deploymentStatus, (value) => value.toMap()),
      'logCollectionSessionDetails': pulumi.Input.mapInputValue<List<LogCollectionJobSessionResponse>, List<Map<String, dynamic>>>(logCollectionSessionDetails, (value) => pulumi.Input.encodeList<LogCollectionJobSessionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'percentComplete': percentComplete,
      'validationStatus': pulumi.Input.mapInputValue<EceActionStatusResponse, Map<String, dynamic>>(validationStatus, (value) => value.toMap()),
    };
  }

  factory LogCollectionReportedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LogCollectionReportedPropertiesResponse(
      deploymentStatus: pulumi.Input.fromValue(EceActionStatusResponse.fromMap((map['deploymentStatus']! as Map).cast<String, dynamic>())),
      logCollectionSessionDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<LogCollectionJobSessionResponse>(map['logCollectionSessionDetails']!, (value) => LogCollectionJobSessionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      percentComplete: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['percentComplete'])),
      validationStatus: pulumi.Input.fromValue(EceActionStatusResponse.fromMap((map['validationStatus']! as Map).cast<String, dynamic>())),
    );
  }
}
