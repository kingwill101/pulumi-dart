// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader {
  /// Managed rule group name.
  final pulumi.Input<String> name;
  /// Value of the header.
  final pulumi.Input<String> value;

  /// Creates a new [GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader].
  /// [name] Managed rule group name.
  /// [value] Value of the header.
  const GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
