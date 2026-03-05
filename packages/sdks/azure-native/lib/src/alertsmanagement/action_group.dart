// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditions.dart';
import 'scope.dart';

/// Action rule with action group configuration
class ActionGroup {
  /// Action group to trigger if action rule matches
  final pulumi.Input<String> actionGroupId;
  /// conditions on which alerts will be filtered
  final pulumi.Input<Conditions>? conditions;
  /// Description of action rule
  final pulumi.Input<String>? description;
  /// scope on which action rule will apply
  final pulumi.Input<Scope>? scope;
  /// Indicates if the given action rule is enabled or disabled
  final pulumi.Input<String>? status;
  /// Indicates type of action rule
  /// Expected value is 'ActionGroup'.
  final pulumi.Input<String> type;

  /// Creates a new [ActionGroup].
  /// [actionGroupId] Action group to trigger if action rule matches
  /// [conditions] conditions on which alerts will be filtered
  /// [description] Description of action rule
  /// [scope] scope on which action rule will apply
  /// [status] Indicates if the given action rule is enabled or disabled
  /// [type] Indicates type of action rule
  ActionGroup({
    required this.actionGroupId,
    this.conditions,
    this.description,
    this.scope,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': actionGroupId,
      'conditions': ?pulumi.Input.mapOptionalInputValue<Conditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'description': ?description,
      'scope': ?pulumi.Input.mapOptionalInputValue<Scope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'status': ?status,
      'type': type,
    };
  }

  factory ActionGroup.fromMap(Map<String, dynamic> map) {
    return ActionGroup(
      actionGroupId: pulumi.Input.fromValue(map['actionGroupId'] as String),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Conditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Scope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

