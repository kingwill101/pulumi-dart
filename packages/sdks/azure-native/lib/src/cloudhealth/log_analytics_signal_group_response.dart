// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_assignment_response.dart';

/// A grouping of signal assignments for a Log Analytics Workspace
class LogAnalyticsSignalGroupResponse {
  /// Reference to the name of the authentication setting which is used for querying the data source
  final String authenticationSetting;
  /// Log Analytics Workspace resource ID
  final String logAnalyticsWorkspaceResourceId;
  /// Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  final List<SignalAssignmentResponse>? signalAssignments;

  /// Creates a new [LogAnalyticsSignalGroupResponse].
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying the data source
  /// [logAnalyticsWorkspaceResourceId] Log Analytics Workspace resource ID
  /// [signalAssignments] Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  LogAnalyticsSignalGroupResponse({
    required this.authenticationSetting,
    required this.logAnalyticsWorkspaceResourceId,
    this.signalAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSetting': authenticationSetting,
      'logAnalyticsWorkspaceResourceId': logAnalyticsWorkspaceResourceId,
      'signalAssignments': ?signalAssignments == null ? null : pulumi.Input.encodeList<SignalAssignmentResponse, Map<String, dynamic>>(signalAssignments!, (value) => value.toMap()),
    };
  }

  factory LogAnalyticsSignalGroupResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsSignalGroupResponse(
      authenticationSetting: map['authenticationSetting'] as String,
      logAnalyticsWorkspaceResourceId: map['logAnalyticsWorkspaceResourceId'] as String,
      signalAssignments: map['signalAssignments'] == null ? null : pulumi.Input.decodeList<SignalAssignmentResponse>(map['signalAssignments'], (value) => SignalAssignmentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

