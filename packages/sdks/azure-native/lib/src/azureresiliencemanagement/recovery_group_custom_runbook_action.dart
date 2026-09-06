// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity.dart';

/// Defines a custom runbook action for the recovery orchestration group.
class RecoveryGroupCustomRunbookAction {
  /// The ARM Resource ID of the resource that includes the actionable script, such as a Runbook in an Automation Account.
  final pulumi.Input<String?>? actionResourceId;
  /// The identity associated with actionResourceId for RBAC.
  final pulumi.Input<AssociatedIdentity?>? associatedIdentity;
  /// A description of the recovery orchestration group action, containing the instructions to be performed during this action.
  final pulumi.Input<String?>? description;
  /// The name of the recovery orchestration group action.
  final pulumi.Input<String> name;
  /// Key-value parameters for the operation.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// The maximum amount of time, in minutes, allowed for the action to complete before it times out.
  final pulumi.Input<int> timeoutInMinutes;
  /// Specifies the type of recovery orchestration group actions.
  /// Expected value is 'CustomRunbook'.
  final pulumi.Input<String> type;

  /// Creates a new [RecoveryGroupCustomRunbookAction].
  /// [actionResourceId] The ARM Resource ID of the resource that includes the actionable script, such as a Runbook in an Automation Account.
  /// [associatedIdentity] The identity associated with actionResourceId for RBAC.
  /// [description] A description of the recovery orchestration group action, containing the instructions to be performed during this action.
  /// [name] The name of the recovery orchestration group action.
  /// [parameters] Key-value parameters for the operation.
  /// [timeoutInMinutes] The maximum amount of time, in minutes, allowed for the action to complete before it times out.
  /// [type] Specifies the type of recovery orchestration group actions.
  const RecoveryGroupCustomRunbookAction({
    this.actionResourceId,
    this.associatedIdentity,
    this.description,
    required this.name,
    this.parameters,
    required this.timeoutInMinutes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionResourceId': ?actionResourceId,
      'associatedIdentity': ?pulumi.Input.mapOptionalInputValue<AssociatedIdentity, Map<String, dynamic>>(associatedIdentity, (value) => value.toMap()),
      'description': ?description,
      'name': name,
      'parameters': ?parameters,
      'timeoutInMinutes': timeoutInMinutes,
      'type': type,
    };
  }

  factory RecoveryGroupCustomRunbookAction.fromMap(Map<String, dynamic> map) {
    return RecoveryGroupCustomRunbookAction(
      actionResourceId: (() { final guardedValue = map['actionResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedIdentity: (() { final guardedValue = map['associatedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssociatedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeoutInMinutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['timeoutInMinutes'])),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
