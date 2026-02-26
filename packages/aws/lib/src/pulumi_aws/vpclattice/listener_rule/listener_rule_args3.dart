// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_rule_action/listener_rule_action3.dart';
import '../listener_rule_match/listener_rule_match.dart';

/// The set of arguments for ListenerRule.
class ListenerRuleArgs3 {
  /// The action for the listener rule.
  /// See <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span> Block for details.
  final Input<ListenerRuleAction3> action;

  /// The ID or Amazon Resource Name (ARN) of the listener.
  final Input<String> listenerIdentifier;

  /// The rule match.
  /// See <span pulumi-lang-nodejs="`match`" pulumi-lang-dotnet="`Match`" pulumi-lang-go="`match`" pulumi-lang-python="`match`" pulumi-lang-yaml="`match`" pulumi-lang-java="`match`">`match`</span> Block
  final Input<ListenerRuleMatch> match;

  /// The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  final Input<String>? name;

  /// The priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  ///
  /// The following arguments are optional:
  final Input<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID or Amazon Resource Identifier (ARN) of the service.
  final Input<String> serviceIdentifier;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ListenerRuleArgs3({
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
    map['action'] =
        Input.mapInputValue<ListenerRuleAction3, Map<String, dynamic>>(
            action, (value) => value.toMap());
    map['listenerIdentifier'] = listenerIdentifier;
    map['match'] = Input.mapInputValue<ListenerRuleMatch, Map<String, dynamic>>(
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

  factory ListenerRuleArgs3.fromMap(Map<String, dynamic> map) {
    return ListenerRuleArgs3(
      action: Input.asInput<ListenerRuleAction3>(map['action']),
      listenerIdentifier: Input.asInput<String>(map['listenerIdentifier']),
      match: Input.asInput<ListenerRuleMatch>(map['match']),
      name: Input.asOptionalInput<String>(map['name']),
      priority: Input.asInput<int>(map['priority']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceIdentifier: Input.asInput<String>(map['serviceIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
