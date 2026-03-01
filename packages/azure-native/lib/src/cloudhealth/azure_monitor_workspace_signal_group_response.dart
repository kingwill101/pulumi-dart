// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_assignment_response.dart';

/// A grouping of signal assignments for a Azure Monitor Workspace
class AzureMonitorWorkspaceSignalGroupResponse {
  /// Reference to the name of the authentication setting which is used for querying the data source
  final String authenticationSetting;
  /// Azure Monitor workspace resource ID
  final String azureMonitorWorkspaceResourceId;
  /// Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  final List<SignalAssignmentResponse>? signalAssignments;

  /// Creates a new [AzureMonitorWorkspaceSignalGroupResponse].
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying the data source
  /// [azureMonitorWorkspaceResourceId] Azure Monitor workspace resource ID
  /// [signalAssignments] Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  AzureMonitorWorkspaceSignalGroupResponse({
    required this.authenticationSetting,
    required this.azureMonitorWorkspaceResourceId,
    this.signalAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSetting': authenticationSetting,
      'azureMonitorWorkspaceResourceId': azureMonitorWorkspaceResourceId,
      'signalAssignments': ?signalAssignments == null ? null : pulumi.Input.encodeList<SignalAssignmentResponse, Map<String, dynamic>>(signalAssignments!, (value) => value.toMap()),
    };
  }

  factory AzureMonitorWorkspaceSignalGroupResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceSignalGroupResponse(
      authenticationSetting: map['authenticationSetting'] as String,
      azureMonitorWorkspaceResourceId: map['azureMonitorWorkspaceResourceId'] as String,
      signalAssignments: map['signalAssignments'] == null ? null : pulumi.Input.decodeList<SignalAssignmentResponse>(map['signalAssignments'], (value) => SignalAssignmentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

