// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader {
  /// Managed rule group name.
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader].
  /// [name] Managed rule group name.
  /// [value] Required.
  GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
