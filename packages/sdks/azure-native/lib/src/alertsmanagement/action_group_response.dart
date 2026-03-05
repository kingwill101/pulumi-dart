// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditions_response.dart';
import 'scope_response.dart';

/// Action rule with action group configuration
class ActionGroupResponse {
  /// Action group to trigger if action rule matches
  final pulumi.Input<String> actionGroupId;
  /// conditions on which alerts will be filtered
  final pulumi.Input<ConditionsResponse>? conditions;
  /// Creation time of action rule. Date-Time in ISO-8601 format.
  final pulumi.Input<String> createdAt;
  /// Created by user name.
  final pulumi.Input<String> createdBy;
  /// Description of action rule
  final pulumi.Input<String>? description;
  /// Last updated time of action rule. Date-Time in ISO-8601 format.
  final pulumi.Input<String> lastModifiedAt;
  /// Last modified by user name.
  final pulumi.Input<String> lastModifiedBy;
  /// scope on which action rule will apply
  final pulumi.Input<ScopeResponse>? scope;
  /// Indicates if the given action rule is enabled or disabled
  final pulumi.Input<String>? status;
  /// Indicates type of action rule
  /// Expected value is 'ActionGroup'.
  final pulumi.Input<String> type;

  /// Creates a new [ActionGroupResponse].
  /// [actionGroupId] Action group to trigger if action rule matches
  /// [conditions] conditions on which alerts will be filtered
  /// [createdAt] Creation time of action rule. Date-Time in ISO-8601 format.
  /// [createdBy] Created by user name.
  /// [description] Description of action rule
  /// [lastModifiedAt] Last updated time of action rule. Date-Time in ISO-8601 format.
  /// [lastModifiedBy] Last modified by user name.
  /// [scope] scope on which action rule will apply
  /// [status] Indicates if the given action rule is enabled or disabled
  /// [type] Indicates type of action rule
  ActionGroupResponse({
    required this.actionGroupId,
    this.conditions,
    required this.createdAt,
    required this.createdBy,
    this.description,
    required this.lastModifiedAt,
    required this.lastModifiedBy,
    this.scope,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': actionGroupId,
      'conditions': ?pulumi.Input.mapOptionalInputValue<ConditionsResponse, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'createdAt': createdAt,
      'createdBy': createdBy,
      'description': ?description,
      'lastModifiedAt': lastModifiedAt,
      'lastModifiedBy': lastModifiedBy,
      'scope': ?pulumi.Input.mapOptionalInputValue<ScopeResponse, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'status': ?status,
      'type': type,
    };
  }

  factory ActionGroupResponse.fromMap(Map<String, dynamic> map) {
    return ActionGroupResponse(
      actionGroupId: pulumi.Input.fromValue(map['actionGroupId'] as String),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedAt: pulumi.Input.fromValue(map['lastModifiedAt'] as String),
      lastModifiedBy: pulumi.Input.fromValue(map['lastModifiedBy'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

