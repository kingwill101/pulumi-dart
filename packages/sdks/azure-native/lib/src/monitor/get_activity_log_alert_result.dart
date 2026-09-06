// ignore_for_file: unused_element, unnecessary_cast

import 'action_list_response.dart';
import 'alert_rule_all_of_condition_response.dart';

/// Result data returned by getActivityLogAlert.
class GetActivityLogAlertResult {
  /// The actions that will activate when the condition is met.
  final ActionListResponse? actions;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The condition that will cause this alert to activate.
  final AlertRuleAllOfConditionResponse? condition;
  /// A description of this Activity Log Alert rule.
  final String? description;
  /// Indicates whether this Activity Log Alert rule is enabled. If an Activity Log Alert rule is not enabled, then none of its actions will be activated.
  final bool? enabled;
  /// The resource Id.
  final String? id;
  /// The location of the resource. Azure Activity Log Alert rules are supported on Global, West Europe and North Europe regions.
  final String? location;
  /// The name of the resource.
  final String? name;
  /// A list of resource IDs that will be used as prefixes. The alert will only apply to Activity Log events with resource IDs that fall under one of these prefixes. This list must include at least one item.
  final List<String>? scopes;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetActivityLogAlertResult].
  /// [actions] The actions that will activate when the condition is met.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [condition] The condition that will cause this alert to activate.
  /// [description] A description of this Activity Log Alert rule.
  /// [enabled] Indicates whether this Activity Log Alert rule is enabled. If an Activity Log Alert rule is not enabled, then none of its actions will be activated.
  /// [id] The resource Id.
  /// [location] The location of the resource. Azure Activity Log Alert rules are supported on Global, West Europe and North Europe regions.
  /// [name] The name of the resource.
  /// [scopes] A list of resource IDs that will be used as prefixes. The alert will only apply to Activity Log events with resource IDs that fall under one of these prefixes. This list must include at least one item.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  GetActivityLogAlertResult({
    this.actions,
    this.azureApiVersion,
    this.condition,
    this.description,
    bool? enabled,
    this.id,
    String? location,
    this.name,
    this.scopes,
    this.tags,
    this.type,
  }) : enabled = enabled ?? true, location = location ?? 'global';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'condition': ?condition?.toMap(),
      'description': ?description,
      'enabled': ?enabled,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'scopes': ?scopes,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetActivityLogAlertResult.fromMap(Map<String, dynamic> map) {
    return GetActivityLogAlertResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return ActionListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return AlertRuleAllOfConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
