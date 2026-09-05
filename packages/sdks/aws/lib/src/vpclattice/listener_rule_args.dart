// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action.dart';
import 'listener_rule_match.dart';

/// {@template pulumi_vpclattice_listener_rule_listener_rule_args_doc}
/// The set of arguments for ListenerRule.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_listener_rule_listener_rule_args_doc}
class ListenerRuleArgs {
  /// Action for the listener rule. See `action` Block for details.
  final pulumi.Input<ListenerRuleAction> action;
  /// ID or ARN of the listener.
  final pulumi.Input<String> listenerIdentifier;
  /// Rule match. See `match` Block for details.
  final pulumi.Input<ListenerRuleMatch> match;
  /// Name of the rule. Must be unique within the listener. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  final pulumi.Input<String?>? name;
  /// Priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  final pulumi.Input<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID or ARN of the service.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ListenerRuleArgs].
  /// [action] Action for the listener rule. See `action` Block for details.
  /// [listenerIdentifier] ID or ARN of the listener.
  /// [match] Rule match. See `match` Block for details.
  /// [name] Name of the rule. Must be unique within the listener. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  /// [priority] Priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceIdentifier] ID or ARN of the service.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ListenerRuleArgs({
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
      action: pulumi.Input.fromValue(ListenerRuleAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      listenerIdentifier: pulumi.Input.fromValue(map['listenerIdentifier'] as String),
      match: pulumi.Input.fromValue(ListenerRuleMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceIdentifier: pulumi.Input.fromValue(map['serviceIdentifier'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
