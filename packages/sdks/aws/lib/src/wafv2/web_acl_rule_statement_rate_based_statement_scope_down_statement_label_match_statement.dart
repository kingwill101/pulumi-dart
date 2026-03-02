// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement {
  /// String to match against.
  final pulumi.Input<String> key;
  /// Specify whether you want to match using the label name or just the namespace. Valid values are `LABEL` or `NAMESPACE`.
  final pulumi.Input<String> scope;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement].
  /// [key] String to match against.
  /// [scope] Specify whether you want to match using the label name or just the namespace. Valid values are `LABEL` or `NAMESPACE`.
  WebAclRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement({
    required this.key,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'scope': scope,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement(
      key: (map['key'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

