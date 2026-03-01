// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ece_action_status_response.dart';
import 'edge_machine_remote_support_node_settings_response.dart';
import 'remote_support_session_response.dart';

/// Represents the reported properties of a remote support job.
class EdgeMachineRemoteSupportJobReportedPropertiesResponse {
  /// Deployment status of job.
  final EceActionStatusResponse deploymentStatus;
  /// Optional settings for configuring the node for remote support.
  final EdgeMachineRemoteSupportNodeSettingsResponse nodeSettings;
  /// The percentage of the job that is complete.
  final int percentComplete;
  /// Details of the remote support session.
  final List<RemoteSupportSessionResponse> sessionDetails;
  /// Validation status of job.
  final EceActionStatusResponse validationStatus;

  /// Creates a new [EdgeMachineRemoteSupportJobReportedPropertiesResponse].
  /// [deploymentStatus] Deployment status of job.
  /// [nodeSettings] Optional settings for configuring the node for remote support.
  /// [percentComplete] The percentage of the job that is complete.
  /// [sessionDetails] Details of the remote support session.
  /// [validationStatus] Validation status of job.
  EdgeMachineRemoteSupportJobReportedPropertiesResponse({
    required this.deploymentStatus,
    required this.nodeSettings,
    required this.percentComplete,
    required this.sessionDetails,
    required this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStatus': deploymentStatus.toMap(),
      'nodeSettings': nodeSettings.toMap(),
      'percentComplete': percentComplete,
      'sessionDetails': pulumi.Input.encodeList<RemoteSupportSessionResponse, Map<String, dynamic>>(sessionDetails, (value) => value.toMap()),
      'validationStatus': validationStatus.toMap(),
    };
  }

  factory EdgeMachineRemoteSupportJobReportedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachineRemoteSupportJobReportedPropertiesResponse(
      deploymentStatus: EceActionStatusResponse.fromMap((map['deploymentStatus'] as Map).cast<String, dynamic>()),
      nodeSettings: EdgeMachineRemoteSupportNodeSettingsResponse.fromMap((map['nodeSettings'] as Map).cast<String, dynamic>()),
      percentComplete: map['percentComplete'] as int,
      sessionDetails: pulumi.Input.decodeList<RemoteSupportSessionResponse>(map['sessionDetails'], (value) => RemoteSupportSessionResponse.fromMap((value as Map).cast<String, dynamic>())),
      validationStatus: EceActionStatusResponse.fromMap((map['validationStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

