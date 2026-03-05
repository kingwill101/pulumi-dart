// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_assignment_response.dart';

/// A grouping of signal assignments for an Azure resource
class AzureResourceSignalGroupResponse {
  /// Reference to the name of the authentication setting which is used for querying the data source
  final pulumi.Input<String> authenticationSetting;
  /// Azure resource ID
  final pulumi.Input<String> azureResourceId;
  /// Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  final pulumi.Input<List<SignalAssignmentResponse>>? signalAssignments;

  /// Creates a new [AzureResourceSignalGroupResponse].
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying the data source
  /// [azureResourceId] Azure resource ID
  /// [signalAssignments] Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  AzureResourceSignalGroupResponse({
    required this.authenticationSetting,
    required this.azureResourceId,
    this.signalAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSetting': authenticationSetting,
      'azureResourceId': azureResourceId,
      'signalAssignments': ?pulumi.Input.mapOptionalInputValue<List<SignalAssignmentResponse>, List<Map<String, dynamic>>>(signalAssignments, (value) => pulumi.Input.encodeList<SignalAssignmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureResourceSignalGroupResponse.fromMap(Map<String, dynamic> map) {
    return AzureResourceSignalGroupResponse(
      authenticationSetting: pulumi.Input.fromValue(map['authenticationSetting'] as String),
      azureResourceId: pulumi.Input.fromValue(map['azureResourceId'] as String),
      signalAssignments: (() { final guardedValue = map['signalAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SignalAssignmentResponse>(guardedValue, (value) => SignalAssignmentResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

