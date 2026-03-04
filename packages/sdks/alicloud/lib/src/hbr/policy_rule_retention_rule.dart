// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyRuleRetentionRule {
  /// Valid values: `annually`, `MONTHLY`, and `WEEKLY`:- `annually`: the first backup of each year. - `MONTHLY`: The first backup of the month. - `WEEKLY`: The first backup of the week. - `DAILY`: The first backup of the day.
  final pulumi.Input<String>? advancedRetentionType;

  /// Retention time, in days
  final pulumi.Input<int>? retention;

  /// Creates a new [PolicyRuleRetentionRule].
  /// [advancedRetentionType] Valid values: `annually`, `MONTHLY`, and `WEEKLY`:- `annually`: the first backup of each year. - `MONTHLY`: The first backup of the month. - `WEEKLY`: The first backup of the week. - `DAILY`: The first backup of the day.
  /// [retention] Retention time, in days
  PolicyRuleRetentionRule({this.advancedRetentionType, this.retention});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedRetentionType': ?advancedRetentionType,
      'retention': ?retention,
    };
  }

  factory PolicyRuleRetentionRule.fromMap(Map<String, dynamic> map) {
    return PolicyRuleRetentionRule(
      advancedRetentionType: (() {
        final guardedValue = map['advancedRetentionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retention: (() {
        final guardedValue = map['retention'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
