// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a manual action for the recovery orchestration group.
class RecoveryGroupManualActionResponse {
  /// A description of the recovery orchestration group action, containing the instructions to be performed during this action.
  final pulumi.Input<String?>? description;
  /// The name of the recovery orchestration group action.
  final pulumi.Input<String> name;
  /// The maximum amount of time, in minutes, allowed for the action to complete before it times out.
  final pulumi.Input<int> timeoutInMinutes;
  /// Specifies the type of recovery orchestration group actions.
  /// Expected value is 'ManualAction'.
  final pulumi.Input<String> type;

  /// Creates a new [RecoveryGroupManualActionResponse].
  /// [description] A description of the recovery orchestration group action, containing the instructions to be performed during this action.
  /// [name] The name of the recovery orchestration group action.
  /// [timeoutInMinutes] The maximum amount of time, in minutes, allowed for the action to complete before it times out.
  /// [type] Specifies the type of recovery orchestration group actions.
  const RecoveryGroupManualActionResponse({
    this.description,
    required this.name,
    required this.timeoutInMinutes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'timeoutInMinutes': timeoutInMinutes,
      'type': type,
    };
  }

  factory RecoveryGroupManualActionResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryGroupManualActionResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      timeoutInMinutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['timeoutInMinutes'])),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
