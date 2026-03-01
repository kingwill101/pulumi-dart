// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_application_rule_collection_rule.dart';

class FirewallPolicyRuleCollectionGroupApplicationRuleCollection {
  /// The action to take for the application rules in this collection. Possible values are `Allow` and `Deny`.
  final String action;
  /// The name which should be used for this application rule collection.
  final String name;
  /// The priority of the application rule collection. The range is `100` - `65000`.
  final int priority;
  /// One or more `application_rule` blocks as defined below.
  final List<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule> rules;

  /// Creates a new [FirewallPolicyRuleCollectionGroupApplicationRuleCollection].
  /// [action] The action to take for the application rules in this collection. Possible values are `Allow` and `Deny`.
  /// [name] The name which should be used for this application rule collection.
  /// [priority] The priority of the application rule collection. The range is `100` - `65000`.
  /// [rules] One or more `application_rule` blocks as defined below.
  FirewallPolicyRuleCollectionGroupApplicationRuleCollection({
    required this.action,
    required this.name,
    required this.priority,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'name': name,
      'priority': priority,
      'rules': pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyRuleCollectionGroupApplicationRuleCollection.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupApplicationRuleCollection(
      action: map['action'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      rules: pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule>(map['rules'], (value) => FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

