// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action.dart';
import 'listener_rule_match.dart';

/// {@template pulumi_vpclattice_listener_rule_listener_rule_args_doc}
/// The set of arguments for ListenerRule.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_listener_rule_listener_rule_args_doc}
class ListenerRuleArgs {
  /// The action for the listener rule.
  /// See `action` Block for details.
  final pulumi.Input<ListenerRuleAction> action;
  /// The ID or Amazon Resource Name (ARN) of the listener.
  final pulumi.Input<String> listenerIdentifier;
  /// The rule match.
  /// See `match` Block
  final pulumi.Input<ListenerRuleMatch> match;
  /// The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  final pulumi.Input<String>? name;
  /// The priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID or Amazon Resource Identifier (ARN) of the service.
  final pulumi.Input<String> serviceIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ListenerRuleArgs].
  /// [action] The action for the listener rule.
  /// [listenerIdentifier] The ID or Amazon Resource Name (ARN) of the listener.
  /// [match] The rule match.
  /// [name] The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  /// [priority] The priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceIdentifier] The ID or Amazon Resource Identifier (ARN) of the service.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ListenerRuleArgs({
    required pulumi.Output<ListenerRuleAction> action,
    required pulumi.Output<String> listenerIdentifier,
    required pulumi.Output<ListenerRuleMatch> match,
    pulumi.Output<String>? name,
    required pulumi.Output<int> priority,
    pulumi.Output<String>? region,
    required pulumi.Output<String> serviceIdentifier,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      action = pulumi.Input.asInput<ListenerRuleAction>(action),
      listenerIdentifier = pulumi.Input.asInput<String>(listenerIdentifier),
      match = pulumi.Input.asInput<ListenerRuleMatch>(match),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceIdentifier = pulumi.Input.asInput<String>(serviceIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<ListenerRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'listenerIdentifier': listenerIdentifier,
      'match': pulumi.Input.mapInputValue<ListenerRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': ?name,
      'priority': priority,
      'region': ?region,
      'serviceIdentifier': serviceIdentifier,
      'tags': ?tags,
    };
  }

  factory ListenerRuleArgs.fromMap(Map<String, dynamic> map) {
    return ListenerRuleArgs(
      action: pulumi.Output.create<ListenerRuleAction>(ListenerRuleAction.fromMap((map['action'] as Map).cast<String, dynamic>())),
      listenerIdentifier: pulumi.Output.create<String>(map['listenerIdentifier'] as String),
      match: pulumi.Output.create<ListenerRuleMatch>(ListenerRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceIdentifier: pulumi.Output.create<String>(map['serviceIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

