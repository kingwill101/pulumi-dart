// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet {
  /// Applies only to the targeted inspection level. Determines whether to use machine learning (ML) to analyze your web traffic for bot-related activity. Defaults to `true`.
  final bool? enableMachineLearning;

  /// The inspection level to use for the Bot Control rule group.
  final String inspectionLevel;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet].
  /// [enableMachineLearning] Applies only to the targeted inspection level. Determines whether to use machine learning (ML) to analyze your web traffic for bot-related activity. Defaults to `true`.
  /// [inspectionLevel] The inspection level to use for the Bot Control rule group.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet({
    this.enableMachineLearning,
    required this.inspectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMachineLearning': ?enableMachineLearning,
      'inspectionLevel': inspectionLevel,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet(
      enableMachineLearning: map['enableMachineLearning'] == null
          ? null
          : map['enableMachineLearning'] as bool,
      inspectionLevel: map['inspectionLevel'] as String,
    );
  }
}
