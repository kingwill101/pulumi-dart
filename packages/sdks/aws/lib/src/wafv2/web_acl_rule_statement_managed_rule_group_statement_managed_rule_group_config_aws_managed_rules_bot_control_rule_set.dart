// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet {
  final pulumi.Input<bool?>? enableMachineLearning;
  final pulumi.Input<String> inspectionLevel;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet].
  /// [enableMachineLearning] Optional.
  /// [inspectionLevel] Required.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet({
    this.enableMachineLearning,
    required this.inspectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMachineLearning': ?enableMachineLearning,
      'inspectionLevel': inspectionLevel,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet(
      enableMachineLearning: (() { final guardedValue = map['enableMachineLearning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inspectionLevel: pulumi.Input.fromValue(map['inspectionLevel'] as String),
    );
  }
}
