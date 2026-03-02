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

  factory DefenseRuleConfigWafBaseConfigRuleDetail.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfigWafBaseConfigRuleDetail(
      ruleAction: map['ruleAction'] == null ? null : (map['ruleAction']! as String).input(),
      ruleId: map['ruleId'] == null ? null : (map['ruleId']! as String).input(),
      ruleStatus: map['ruleStatus'] == null ? null : (map['ruleStatus']! as int).input(),
    );
  }
}

