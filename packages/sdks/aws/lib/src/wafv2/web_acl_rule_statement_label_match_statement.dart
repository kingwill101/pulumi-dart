// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementLabelMatchStatement {
  /// String to match against. For `LABEL` scope, include the name and any preceding namespace specifications. For `NAMESPACE` scope, include namespace strings. Labels are case sensitive and components must be separated by colon (e.g., `NS1:NS2:name`).
  final pulumi.Input<String> key;
  /// Whether to match using the label name or namespace. Valid values: `LABEL`, `NAMESPACE`.
  final pulumi.Input<String> scope;

  /// Creates a new [WebAclRuleStatementLabelMatchStatement].
  /// [key] String to match against. For `LABEL` scope, include the name and any preceding namespace specifications. For `NAMESPACE` scope, include namespace strings. Labels are case sensitive and components must be separated by colon (e.g., `NS1:NS2:name`).
  /// [scope] Whether to match using the label name or namespace. Valid values: `LABEL`, `NAMESPACE`.
  const WebAclRuleStatementLabelMatchStatement({
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
      key: pulumi.Input.fromValue(map['key'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
