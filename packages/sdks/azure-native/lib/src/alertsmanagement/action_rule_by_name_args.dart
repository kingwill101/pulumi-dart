// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alertsmanagement_action_rule_by_name_args_doc}
/// The set of arguments for ActionRuleByName.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_action_rule_by_name_args_doc}
class ActionRuleByNameArgs {
  /// The name of action rule that needs to be created/updated
  final pulumi.Input<String?>? actionRuleName;
  /// Resource location
  final pulumi.Input<String?>? location;
  /// action rule properties
  final pulumi.Input<dynamic>? properties;
  /// Resource group name where the resource is created.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ActionRuleByNameArgs].
  /// [actionRuleName] The name of action rule that needs to be created/updated
  /// [location] Resource location
  /// [properties] action rule properties
  /// [resourceGroupName] Resource group name where the resource is created.
  /// [tags] Resource tags
  const ActionRuleByNameArgs({
    this.actionRuleName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionRuleName': ?actionRuleName,
      'location': ?location,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ActionRuleByNameArgs.fromMap(Map<String, dynamic> map) {
    return ActionRuleByNameArgs(
      actionRuleName: (() { final guardedValue = map['actionRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
