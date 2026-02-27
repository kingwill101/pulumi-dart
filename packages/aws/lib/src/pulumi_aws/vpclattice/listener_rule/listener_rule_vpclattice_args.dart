// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_rule_action/listener_rule_action_vpclattice.dart';
import '../listener_rule_match/listener_rule_match.dart';

/// The set of arguments for ListenerRule.
class ListenerRuleVpclatticeArgs {
  /// The action for the listener rule.
  /// See `action` Block for details.
  final pulumi.Input<ListenerRuleActionVpclattice> action;

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

  ListenerRuleVpclatticeArgs({
    required this.action,
    required this.listenerIdentifier,
    required this.match,
    this.name,
    required this.priority,
    this.region,
    required this.serviceIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = pulumi.Input.mapInputValue<ListenerRuleActionVpclattice,
        Map<String, dynamic>>(action, (value) => value.toMap());
    map['listenerIdentifier'] = listenerIdentifier;
    map['match'] =
        pulumi.Input.mapInputValue<ListenerRuleMatch, Map<String, dynamic>>(
            match, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['priority'] = priority;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceIdentifier'] = serviceIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ListenerRuleVpclatticeArgs.fromMap(Map<String, dynamic> map) {
    return ListenerRuleVpclatticeArgs(
      action: pulumi.Input.asInput<ListenerRuleActionVpclattice>(map['action']),
      listenerIdentifier:
          pulumi.Input.asInput<String>(map['listenerIdentifier']),
      match: pulumi.Input.asInput<ListenerRuleMatch>(map['match']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      priority: pulumi.Input.asInput<int>(map['priority']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceIdentifier: pulumi.Input.asInput<String>(map['serviceIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
