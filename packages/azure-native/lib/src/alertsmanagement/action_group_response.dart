// ignore_for_file: unused_element, unnecessary_cast

import 'conditions_response.dart';
import 'scope_response.dart';

/// Action rule with action group configuration
class ActionGroupResponse {
  /// Action group to trigger if action rule matches
  final String actionGroupId;
  /// conditions on which alerts will be filtered
  final ConditionsResponse? conditions;
  /// Creation time of action rule. Date-Time in ISO-8601 format.
  final String createdAt;
  /// Created by user name.
  final String createdBy;
  /// Description of action rule
  final String? description;
  /// Last updated time of action rule. Date-Time in ISO-8601 format.
  final String lastModifiedAt;
  /// Last modified by user name.
  final String lastModifiedBy;
  /// scope on which action rule will apply
  final ScopeResponse? scope;
  /// Indicates if the given action rule is enabled or disabled
  final String? status;
  /// Indicates type of action rule
  /// Expected value is 'ActionGroup'.
  final String type;

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
      'conditions': ?conditions == null ? null : conditions!.toMap(),
      'createdAt': createdAt,
      'createdBy': createdBy,
      'description': ?description,
      'lastModifiedAt': lastModifiedAt,
      'lastModifiedBy': lastModifiedBy,
      'scope': ?scope == null ? null : scope!.toMap(),
      'status': ?status,
      'type': type,
    };
  }

  factory ActionGroupResponse.fromMap(Map<String, dynamic> map) {
    return ActionGroupResponse(
      actionGroupId: map['actionGroupId'] as String,
      conditions: map['conditions'] == null ? null : ConditionsResponse.fromMap((map['conditions'] as Map).cast<String, dynamic>()),
      createdAt: map['createdAt'] as String,
      createdBy: map['createdBy'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      lastModifiedBy: map['lastModifiedBy'] as String,
      scope: map['scope'] == null ? null : ScopeResponse.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] as String,
    );
  }
}

