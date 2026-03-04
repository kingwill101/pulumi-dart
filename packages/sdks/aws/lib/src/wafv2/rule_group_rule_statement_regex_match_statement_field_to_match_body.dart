// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementRegexMatchStatementFieldToMatchBody {
  final pulumi.Input<String>? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRegexMatchStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementRegexMatchStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'oversizeHandling': ?oversizeHandling};
  }

  factory RuleGroupRuleStatementRegexMatchStatementFieldToMatchBody.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRegexMatchStatementFieldToMatchBody(
      oversizeHandling: (() {
        final guardedValue = map['oversizeHandling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
