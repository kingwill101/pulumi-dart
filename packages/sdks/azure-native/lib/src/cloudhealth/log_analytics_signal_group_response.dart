// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_assignment_response.dart';

/// A grouping of signal assignments for a Log Analytics Workspace
class LogAnalyticsSignalGroupResponse {
  /// Reference to the name of the authentication setting which is used for querying the data source
  final pulumi.Input<String> authenticationSetting;
  /// Log Analytics Workspace resource ID
  final pulumi.Input<String> logAnalyticsWorkspaceResourceId;
  /// Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  final pulumi.Input<List<SignalAssignmentResponse>>? signalAssignments;

  /// Creates a new [LogAnalyticsSignalGroupResponse].
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying the data source
  /// [logAnalyticsWorkspaceResourceId] Log Analytics Workspace resource ID
  /// [signalAssignments] Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  const LogAnalyticsSignalGroupResponse({
    required this.authenticationSetting,
    required this.logAnalyticsWorkspaceResourceId,
    this.signalAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSetting': authenticationSetting,
      'logAnalyticsWorkspaceResourceId': logAnalyticsWorkspaceResourceId,
      'signalAssignments': ?pulumi.Input.mapOptionalInputValue<List<SignalAssignmentResponse>, List<Map<String, dynamic>>>(signalAssignments, (value) => pulumi.Input.encodeList<SignalAssignmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LogAnalyticsSignalGroupResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsSignalGroupResponse(
      authenticationSetting: pulumi.Input.fromValue(map['authenticationSetting'] as String),
      logAnalyticsWorkspaceResourceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceResourceId'] as String),
      signalAssignments: (() { final guardedValue = map['signalAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SignalAssignmentResponse>(guardedValue, (value) => SignalAssignmentResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

