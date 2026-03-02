// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_assignment.dart';

/// A grouping of signal assignments for a Log Analytics Workspace
class LogAnalyticsSignalGroup {
  /// Reference to the name of the authentication setting which is used for querying the data source
  final pulumi.Input<String> authenticationSetting;
  /// Log Analytics Workspace resource ID
  final pulumi.Input<String> logAnalyticsWorkspaceResourceId;
  /// Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  final pulumi.Input<List<SignalAssignment>>? signalAssignments;

  /// Creates a new [LogAnalyticsSignalGroup].
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying the data source
  /// [logAnalyticsWorkspaceResourceId] Log Analytics Workspace resource ID
  /// [signalAssignments] Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  LogAnalyticsSignalGroup({
    required this.authenticationSetting,
    required this.logAnalyticsWorkspaceResourceId,
    this.signalAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSetting': authenticationSetting,
      'logAnalyticsWorkspaceResourceId': logAnalyticsWorkspaceResourceId,
      'signalAssignments': ?pulumi.Input.mapOptionalInputValue<List<SignalAssignment>, List<Map<String, dynamic>>>(signalAssignments, (value) => pulumi.Input.encodeList<SignalAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LogAnalyticsSignalGroup.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsSignalGroup(
      authenticationSetting: (map['authenticationSetting'] as String).input(),
      logAnalyticsWorkspaceResourceId: (map['logAnalyticsWorkspaceResourceId'] as String).input(),
      signalAssignments: map['signalAssignments'] == null ? null : (pulumi.Input.decodeList<SignalAssignment>(map['signalAssignments'], (value) => SignalAssignment.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

