// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefenseRuleConfigWafBaseConfigRuleDetail {
  /// Web core protection rule action. Valid values:
  final pulumi.Input<String>? ruleAction;

  /// The protection rule ID.
  final pulumi.Input<String>? ruleId;

  /// Protection rule status.
  final pulumi.Input<int>? ruleStatus;

  /// Creates a new [DefenseRuleConfigWafBaseConfigRuleDetail].
  /// [ruleAction] Web core protection rule action. Valid values:
  /// [ruleId] The protection rule ID.
  /// [ruleStatus] Protection rule status.
  DefenseRuleConfigWafBaseConfigRuleDetail({
    this.ruleAction,
    this.ruleId,
    this.ruleStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleAction': ?ruleAction,
      'ruleId': ?ruleId,
      'ruleStatus': ?ruleStatus,
    };
  }

  factory DefenseRuleConfigWafBaseConfigRuleDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefenseRuleConfigWafBaseConfigRuleDetail(
      ruleAction: (() {
        final guardedValue = map['ruleAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleId: (() {
        final guardedValue = map['ruleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleStatus: (() {
        final guardedValue = map['ruleStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
