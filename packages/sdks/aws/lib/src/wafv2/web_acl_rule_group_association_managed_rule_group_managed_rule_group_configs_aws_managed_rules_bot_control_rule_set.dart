// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet {
  /// Applies only to the targeted inspection level. Determines whether to use machine learning (ML) to analyze your web traffic for bot-related activity. Defaults to `false`.
  final pulumi.Input<bool?>? enableMachineLearning;
  /// Inspection level to use for the Bot Control rule group.
  final pulumi.Input<String> inspectionLevel;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet].
  /// [enableMachineLearning] Applies only to the targeted inspection level. Determines whether to use machine learning (ML) to analyze your web traffic for bot-related activity. Defaults to `false`.
  /// [inspectionLevel] Inspection level to use for the Bot Control rule group.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet({
    this.enableMachineLearning,
    required this.inspectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMachineLearning': ?enableMachineLearning,
      'inspectionLevel': inspectionLevel,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet(
      enableMachineLearning: (() { final guardedValue = map['enableMachineLearning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inspectionLevel: pulumi.Input.fromValue(map['inspectionLevel'] as String),
    );
  }
}
