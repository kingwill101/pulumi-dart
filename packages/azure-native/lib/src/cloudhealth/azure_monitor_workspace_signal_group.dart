// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_assignment.dart';

/// A grouping of signal assignments for a Azure Monitor Workspace
class AzureMonitorWorkspaceSignalGroup {
  /// Reference to the name of the authentication setting which is used for querying the data source
  final String authenticationSetting;
  /// Azure Monitor workspace resource ID
  final String azureMonitorWorkspaceResourceId;
  /// Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  final List<SignalAssignment>? signalAssignments;

  /// Creates a new [AzureMonitorWorkspaceSignalGroup].
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying the data source
  /// [azureMonitorWorkspaceResourceId] Azure Monitor workspace resource ID
  /// [signalAssignments] Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  AzureMonitorWorkspaceSignalGroup({
    required this.authenticationSetting,
    required this.azureMonitorWorkspaceResourceId,
    this.signalAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSetting': authenticationSetting,
      'azureMonitorWorkspaceResourceId': azureMonitorWorkspaceResourceId,
      'signalAssignments': ?signalAssignments == null ? null : pulumi.Input.encodeList<SignalAssignment, Map<String, dynamic>>(signalAssignments!, (value) => value.toMap()),
    };
  }

  factory AzureMonitorWorkspaceSignalGroup.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceSignalGroup(
      authenticationSetting: map['authenticationSetting'] as String,
      azureMonitorWorkspaceResourceId: map['azureMonitorWorkspaceResourceId'] as String,
      signalAssignments: map['signalAssignments'] == null ? null : pulumi.Input.decodeList<SignalAssignment>(map['signalAssignments'], (value) => SignalAssignment.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

