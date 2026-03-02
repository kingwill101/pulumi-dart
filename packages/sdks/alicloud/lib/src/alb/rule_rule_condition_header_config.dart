// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleConditionHeaderConfig {
  final pulumi.Input<String>? key;
  /// Add one or more IP addresses or IP address segments. You can add up to 5 forwarding rules in a SourceIp.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [RuleRuleConditionHeaderConfig].
  /// [key] Optional.
  /// [values] Add one or more IP addresses or IP address segments. You can add up to 5 forwarding rules in a SourceIp.
  RuleRuleConditionHeaderConfig({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'values': ?values,
    };
  }

  factory RuleRuleConditionHeaderConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleConditionHeaderConfig(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

