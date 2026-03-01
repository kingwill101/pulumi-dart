// ignore_for_file: unused_element, unnecessary_cast

import 'action_list_response.dart';
import 'alert_rule_all_of_condition_response.dart';

/// Result data returned by getActivityLogAlert.
class GetActivityLogAlertResult {
  /// The actions that will activate when the condition is met.
  final ActionListResponse actions;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The condition that will cause this alert to activate.
  final AlertRuleAllOfConditionResponse condition;
  /// A description of this Activity Log Alert rule.
  final String? description;
  /// Indicates whether this Activity Log Alert rule is enabled. If an Activity Log Alert rule is not enabled, then none of its actions will be activated.
  final bool? enabled;
  /// The resource Id.
  final String id;
  /// The location of the resource. Azure Activity Log Alert rules are supported on Global, West Europe and North Europe regions.
  final String? location;
  /// The name of the resource.
  final String name;
  /// A list of resource IDs that will be used as prefixes. The alert will only apply to Activity Log events with resource IDs that fall under one of these prefixes. This list must include at least one item.
  final List<String> scopes;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

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
    required this.actions,
    required this.azureApiVersion,
    required this.condition,
    this.description,
    this.enabled,
    required this.id,
    this.location,
    required this.name,
    required this.scopes,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions.toMap(),
      'azureApiVersion': azureApiVersion,
      'condition': condition.toMap(),
      'description': ?description,
      'enabled': ?enabled,
      'id': id,
      'location': ?location,
      'name': name,
      'scopes': scopes,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetActivityLogAlertResult.fromMap(Map<String, dynamic> map) {
    return GetActivityLogAlertResult(
      actions: ActionListResponse.fromMap((map['actions'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      condition: AlertRuleAllOfConditionResponse.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

