// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementLabelMatchStatement {
  /// String to match against.
  final pulumi.Input<String> key;
  /// Specify whether you want to match using the label name or just the namespace. Valid values are `LABEL` or `NAMESPACE`.
  final pulumi.Input<String> scope;

  /// Creates a new [WebAclRuleStatementLabelMatchStatement].
  /// [key] String to match against.
  /// [scope] Specify whether you want to match using the label name or just the namespace. Valid values are `LABEL` or `NAMESPACE`.
  WebAclRuleStatementLabelMatchStatement({
    required this.key,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'scope': scope,
    };
  }

  factory WebAclRuleStatementLabelMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementLabelMatchStatement(
      key: (map['key'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

