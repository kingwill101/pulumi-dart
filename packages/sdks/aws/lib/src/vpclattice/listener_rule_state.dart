// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action.dart';
import 'listener_rule_match.dart';

/// Input properties used for looking up and filtering ListenerRule resources.
class ListenerRuleState {
  /// The action for the listener rule.
  /// See `action` Block for details.
  final pulumi.Input<ListenerRuleAction>? action;
  /// The ARN for the listener rule.
  final pulumi.Input<String>? arn;
  /// The ID or Amazon Resource Name (ARN) of the listener.
  final pulumi.Input<String>? listenerIdentifier;
  /// The rule match.
  /// See `match` Block
  final pulumi.Input<ListenerRuleMatch>? match;
  /// The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  final pulumi.Input<String>? name;
  /// The priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Unique identifier for the listener rule.
  final pulumi.Input<String>? ruleId;
  /// The ID or Amazon Resource Identifier (ARN) of the service.
  final pulumi.Input<String>? serviceIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ListenerRuleState].
  /// [action] The action for the listener rule.
  /// [arn] The ARN for the listener rule.
  /// [listenerIdentifier] The ID or Amazon Resource Name (ARN) of the listener.
  /// [match] The rule match.
  /// [name] The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  /// [priority] The priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleId] Unique identifier for the listener rule.
  /// [serviceIdentifier] The ID or Amazon Resource Identifier (ARN) of the service.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ListenerRuleState({
    pulumi.Output<ListenerRuleAction>? action,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? listenerIdentifier,
    pulumi.Output<ListenerRuleMatch>? match,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? region,
    pulumi.Output<String>? ruleId,
    pulumi.Output<String>? serviceIdentifier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      action = pulumi.Input.asOptionalInput<ListenerRuleAction>(action),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      listenerIdentifier = pulumi.Input.asOptionalInput<String>(listenerIdentifier),
      match = pulumi.Input.asOptionalInput<ListenerRuleMatch>(match),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId),
      serviceIdentifier = pulumi.Input.asOptionalInput<String>(serviceIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<ListenerRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'arn': ?arn,
      'listenerIdentifier': ?listenerIdentifier,
      'match': ?pulumi.Input.mapOptionalInputValue<ListenerRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': ?name,
      'priority': ?priority,
      'region': ?region,
      'ruleId': ?ruleId,
      'serviceIdentifier': ?serviceIdentifier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ListenerRuleState.fromMap(Map<String, dynamic> map) {
    return ListenerRuleState(
      action: map['action'] == null ? null : pulumi.Output.create<ListenerRuleAction>(ListenerRuleAction.fromMap((map['action'] as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      listenerIdentifier: map['listenerIdentifier'] == null ? null : pulumi.Output.create<String>(map['listenerIdentifier'] as String),
      match: map['match'] == null ? null : pulumi.Output.create<ListenerRuleMatch>(ListenerRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
      serviceIdentifier: map['serviceIdentifier'] == null ? null : pulumi.Output.create<String>(map['serviceIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

