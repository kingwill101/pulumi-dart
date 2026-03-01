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
    pulumi.Output<String>? actionRuleName,
    pulumi.Output<String>? location,
    pulumi.Output<ActionGroup>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      actionRuleName = pulumi.Input.asOptionalInput<String>(actionRuleName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ActionGroup>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      actionRuleName: map['actionRuleName'] == null ? null : pulumi.Output.create<String>(map['actionRuleName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ActionGroup>(ActionGroup.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

