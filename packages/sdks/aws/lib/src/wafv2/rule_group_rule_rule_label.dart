// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleRuleLabel {
  /// The label string.
  final pulumi.Input<String> name;

  /// Creates a new [RuleGroupRuleRuleLabel].
  /// [name] The label string.
  const RuleGroupRuleRuleLabel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RuleGroupRuleRuleLabel.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleRuleLabel(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

