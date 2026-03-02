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
    this.action,
    this.arn,
    this.listenerIdentifier,
    this.match,
    this.name,
    this.priority,
    this.region,
    this.ruleId,
    this.serviceIdentifier,
    this.tags,
    this.tagsAll,
  });

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
      action: map['action'] == null ? null : ((ListenerRuleAction.fromMap((map['action']! as Map).cast<String, dynamic>())).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      listenerIdentifier: map['listenerIdentifier'] == null ? null : ((map['listenerIdentifier'] as String).input()).input(),
      match: map['match'] == null ? null : ((ListenerRuleMatch.fromMap((map['match']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      priority: map['priority'] == null ? null : ((map['priority'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      ruleId: map['ruleId'] == null ? null : ((map['ruleId'] as String).input()).input(),
      serviceIdentifier: map['serviceIdentifier'] == null ? null : ((map['serviceIdentifier'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

