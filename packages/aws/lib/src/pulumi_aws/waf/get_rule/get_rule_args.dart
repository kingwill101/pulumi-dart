// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRule.
class GetRuleArgs {
  /// Name of the WAF rule.
  final pulumi.Input<String> name;

  GetRuleArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleArgs(
      name: pulumi.Input.asInput<String>(map['name']),
    );
  }
}
