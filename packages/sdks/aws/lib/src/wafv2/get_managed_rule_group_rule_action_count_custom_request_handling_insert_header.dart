// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader {
  /// Managed rule group name.
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader].
  /// [name] Managed rule group name.
  /// [value] Required.
  GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

