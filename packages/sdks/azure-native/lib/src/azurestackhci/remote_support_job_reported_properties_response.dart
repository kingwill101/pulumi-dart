// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ece_action_status_response.dart';
import 'remote_support_job_node_settings_response.dart';
import 'remote_support_session_response.dart';

/// Represents the reported properties of a remote support job.
class RemoteSupportJobReportedPropertiesResponse {
  /// Deployment status of job.
  final pulumi.Input<EceActionStatusResponse> deploymentStatus;
  /// Optional settings for configuring the node for remote support.
  final pulumi.Input<RemoteSupportJobNodeSettingsResponse> nodeSettings;
  /// The percentage of the job that is complete.
  final pulumi.Input<int> percentComplete;
  /// Details of the remote support session.
  final pulumi.Input<List<RemoteSupportSessionResponse>> sessionDetails;
  /// Validation status of job.
  final pulumi.Input<EceActionStatusResponse> validationStatus;

  /// Creates a new [RemoteSupportJobReportedPropertiesResponse].
  /// [deploymentStatus] Deployment status of job.
  /// [nodeSettings] Optional settings for configuring the node for remote support.
  /// [percentComplete] The percentage of the job that is complete.
  /// [sessionDetails] Details of the remote support session.
  /// [validationStatus] Validation status of job.
  const RemoteSupportJobReportedPropertiesResponse({
    required this.deploymentStatus,
    required this.nodeSettings,
    required this.percentComplete,
    required this.sessionDetails,
    required this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStatus': pulumi.Input.mapInputValue<EceActionStatusResponse, Map<String, dynamic>>(deploymentStatus, (value) => value.toMap()),
      'nodeSettings': pulumi.Input.mapInputValue<RemoteSupportJobNodeSettingsResponse, Map<String, dynamic>>(nodeSettings, (value) => value.toMap()),
      'percentComplete': percentComplete,
      'sessionDetails': pulumi.Input.mapInputValue<List<RemoteSupportSessionResponse>, List<Map<String, dynamic>>>(sessionDetails, (value) => pulumi.Input.encodeList<RemoteSupportSessionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationStatus': pulumi.Input.mapInputValue<EceActionStatusResponse, Map<String, dynamic>>(validationStatus, (value) => value.toMap()),
    };
  }

  factory RemoteSupportJobReportedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RemoteSupportJobReportedPropertiesResponse(
      deploymentStatus: pulumi.Input.fromValue(EceActionStatusResponse.fromMap((map['deploymentStatus']! as Map).cast<String, dynamic>())),
      nodeSettings: pulumi.Input.fromValue(RemoteSupportJobNodeSettingsResponse.fromMap((map['nodeSettings']! as Map).cast<String, dynamic>())),
      percentComplete: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['percentComplete'])),
      sessionDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteSupportSessionResponse>(map['sessionDetails']!, (value) => RemoteSupportSessionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      validationStatus: pulumi.Input.fromValue(EceActionStatusResponse.fromMap((map['validationStatus']! as Map).cast<String, dynamic>())),
    );
  }
}
