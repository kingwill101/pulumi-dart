// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchBody {
  final pulumi.Input<String>? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'oversizeHandling': ?oversizeHandling};
  }

  factory RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchBody.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchBody(
      oversizeHandling: (() {
        final guardedValue = map['oversizeHandling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
