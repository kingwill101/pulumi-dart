// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_group.dart';

/// {@template pulumi_alertsmanagement_action_rule_by_name_args_doc}
/// The set of arguments for ActionRuleByName.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_action_rule_by_name_args_doc}
class ActionRuleByNameArgs {
  /// The name of action rule that needs to be created/updated
  final pulumi.Input<String>? actionRuleName;
  /// Resource location
  final pulumi.Input<String>? location;
  /// action rule properties
  final pulumi.Input<ActionGroup>? properties;
  /// Resource group name where the resource is created.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ActionRuleByNameArgs].
  /// [actionRuleName] The name of action rule that needs to be created/updated
  /// [location] Resource location
  /// [properties] action rule properties
  /// [resourceGroupName] Resource group name where the resource is created.
  /// [tags] Resource tags
  ActionRuleByNameArgs({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<ActionGroup, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ActionRuleByNameArgs.fromMap(Map<String, dynamic> map) {
    return ActionRuleByNameArgs(
      actionRuleName: map['actionRuleName'] == null ? null : (map['actionRuleName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (ActionGroup.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

