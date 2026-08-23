// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace {
  /// Label namespace to use as the custom key.
  final pulumi.Input<String> namespace;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace].
  /// [namespace] Label namespace to use as the custom key.
  const WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace({
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
    };
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace(
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
