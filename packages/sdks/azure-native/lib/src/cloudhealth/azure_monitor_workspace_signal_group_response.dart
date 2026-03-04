// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_assignment_response.dart';

/// A grouping of signal assignments for a Azure Monitor Workspace
class AzureMonitorWorkspaceSignalGroupResponse {
  /// Reference to the name of the authentication setting which is used for querying the data source
  final pulumi.Input<String> authenticationSetting;

  /// Azure Monitor workspace resource ID
  final pulumi.Input<String> azureMonitorWorkspaceResourceId;

  /// Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  final pulumi.Input<List<SignalAssignmentResponse>>? signalAssignments;

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
      'signalAssignments':
          ?pulumi.Input.mapOptionalInputValue<
            List<SignalAssignmentResponse>,
            List<Map<String, dynamic>>
          >(
            signalAssignments,
            (value) =>
                pulumi.Input.encodeList<
                  SignalAssignmentResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AzureMonitorWorkspaceSignalGroupResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureMonitorWorkspaceSignalGroupResponse(
      authenticationSetting: pulumi.Input.fromValue(
        map['authenticationSetting'] as String,
      ),
      azureMonitorWorkspaceResourceId: pulumi.Input.fromValue(
        map['azureMonitorWorkspaceResourceId'] as String,
      ),
      signalAssignments: (() {
        final guardedValue = map['signalAssignments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SignalAssignmentResponse>(
            guardedValue,
            (value) => SignalAssignmentResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
