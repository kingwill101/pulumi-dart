// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_assignment.dart';

/// A grouping of signal assignments for an Azure resource
class AzureResourceSignalGroup {
  /// Reference to the name of the authentication setting which is used for querying the data source
  final pulumi.Input<String> authenticationSetting;
  /// Azure resource ID
  final pulumi.Input<String> azureResourceId;
  /// Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  final pulumi.Input<List<SignalAssignment>?>? signalAssignments;

  /// Creates a new [AzureResourceSignalGroup].
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying the data source
  /// [azureResourceId] Azure resource ID
  /// [signalAssignments] Signal definitions which are assigned to this signal group. All assignments are combined with an OR operator.
  const AzureResourceSignalGroup({
    required this.authenticationSetting,
    required this.azureResourceId,
    this.signalAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSetting': authenticationSetting,
      'azureResourceId': azureResourceId,
      'signalAssignments': ?pulumi.Input.mapOptionalInputValue<List<SignalAssignment>, List<Map<String, dynamic>>>(signalAssignments, (value) => pulumi.Input.encodeList<SignalAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureResourceSignalGroup.fromMap(Map<String, dynamic> map) {
    return AzureResourceSignalGroup(
      authenticationSetting: pulumi.Input.fromValue(map['authenticationSetting'] as String),
      azureResourceId: pulumi.Input.fromValue(map['azureResourceId'] as String),
      signalAssignments: (() { final guardedValue = map['signalAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SignalAssignment>(guardedValue, (value) => SignalAssignment.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
