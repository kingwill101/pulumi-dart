// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleActionRemoveHeaderConfig {
  final pulumi.Input<String>? key;

  /// Creates a new [RuleRuleActionRemoveHeaderConfig].
  /// [key] Optional.
  RuleRuleActionRemoveHeaderConfig({this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key};
  }

  factory RuleRuleActionRemoveHeaderConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionRemoveHeaderConfig(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
