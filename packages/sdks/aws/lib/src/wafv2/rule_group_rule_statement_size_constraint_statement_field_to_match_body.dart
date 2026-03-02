// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementSizeConstraintStatementFieldToMatchBody {
  final pulumi.Input<String>? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementSizeConstraintStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementSizeConstraintStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oversizeHandling': ?oversizeHandling,
    };
  }

  factory RuleGroupRuleStatementSizeConstraintStatementFieldToMatchBody.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementSizeConstraintStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null ? null : ((map['oversizeHandling'] as String).input()).input(),
    );
  }
}

