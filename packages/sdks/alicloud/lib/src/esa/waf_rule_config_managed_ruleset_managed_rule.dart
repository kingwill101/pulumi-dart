// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleConfigManagedRulesetManagedRule {
  final pulumi.Input<String>? action;
  /// The internal unique ID of the WAF rule.
  final pulumi.Input<int>? id;
  /// The status of the managed rule: whether it is enabled or disabled.
  final pulumi.Input<String>? status;

  /// Creates a new [WafRuleConfigManagedRulesetManagedRule].
  /// [action] Optional.
  /// [id] The internal unique ID of the WAF rule.
  /// [status] The status of the managed rule: whether it is enabled or disabled.
  WafRuleConfigManagedRulesetManagedRule({
    this.action,
    this.id,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'id': ?id,
      'status': ?status,
    };
  }

  factory WafRuleConfigManagedRulesetManagedRule.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigManagedRulesetManagedRule(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

