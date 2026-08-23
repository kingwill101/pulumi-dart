// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_assignment.dart';

/// A grouping of signal assignments for a Azure Monitor Workspace
class AzureMonitorWorkspaceSignalGroup {
  /// Reference to the name of the authentication setting which is used for querying the data source
  final pulumi.Input<String> authenticationSetting;
  /// Azure Monitor workspace resource ID
  final pulumi.Input<String> azureMonitorWorkspaceResourceId;
  /// Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  final pulumi.Input<List<SignalAssignment>>? signalAssignments;

  /// Creates a new [AzureMonitorWorkspaceSignalGroup].
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying the data source
  /// [azureMonitorWorkspaceResourceId] Azure Monitor workspace resource ID
  /// [signalAssignments] Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  const AzureMonitorWorkspaceSignalGroup({
    required this.authenticationSetting,
    required this.azureMonitorWorkspaceResourceId,
    this.signalAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSetting': authenticationSetting,
      'azureMonitorWorkspaceResourceId': azureMonitorWorkspaceResourceId,
      'signalAssignments': ?pulumi.Input.mapOptionalInputValue<List<SignalAssignment>, List<Map<String, dynamic>>>(signalAssignments, (value) => pulumi.Input.encodeList<SignalAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureMonitorWorkspaceSignalGroup.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceSignalGroup(
      authenticationSetting: pulumi.Input.fromValue(map['authenticationSetting'] as String),
      azureMonitorWorkspaceResourceId: pulumi.Input.fromValue(map['azureMonitorWorkspaceResourceId'] as String),
      signalAssignments: (() { final guardedValue = map['signalAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SignalAssignment>(guardedValue, (value) => SignalAssignment.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
