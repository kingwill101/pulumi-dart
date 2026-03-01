// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ece_action_status_response.dart';
import 'log_collection_job_session_response.dart';

/// Represents the reported properties of a log collection job.
class EdgeMachineCollectLogJobReportedPropertiesResponse {
  /// Deployment status of job.
  final EceActionStatusResponse deploymentStatus;
  /// Details of the log collection session.
  final List<LogCollectionJobSessionResponse> logCollectionSessionDetails;
  /// The percentage of the job that is complete.
  final int percentComplete;
  /// Validation status of job.
  final EceActionStatusResponse validationStatus;

  /// Creates a new [EdgeMachineCollectLogJobReportedPropertiesResponse].
  /// [deploymentStatus] Deployment status of job.
  /// [logCollectionSessionDetails] Details of the log collection session.
  /// [percentComplete] The percentage of the job that is complete.
  /// [validationStatus] Validation status of job.
  EdgeMachineCollectLogJobReportedPropertiesResponse({
    required this.deploymentStatus,
    required this.logCollectionSessionDetails,
    required this.percentComplete,
    required this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStatus': deploymentStatus.toMap(),
      'logCollectionSessionDetails': pulumi.Input.encodeList<LogCollectionJobSessionResponse, Map<String, dynamic>>(logCollectionSessionDetails, (value) => value.toMap()),
      'percentComplete': percentComplete,
      'validationStatus': validationStatus.toMap(),
    };
  }

  factory EdgeMachineCollectLogJobReportedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachineCollectLogJobReportedPropertiesResponse(
      deploymentStatus: EceActionStatusResponse.fromMap((map['deploymentStatus'] as Map).cast<String, dynamic>()),
      logCollectionSessionDetails: pulumi.Input.decodeList<LogCollectionJobSessionResponse>(map['logCollectionSessionDetails'], (value) => LogCollectionJobSessionResponse.fromMap((value as Map).cast<String, dynamic>())),
      percentComplete: map['percentComplete'] as int,
      validationStatus: EceActionStatusResponse.fromMap((map['validationStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

