// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace {
  /// The namespace to use for aggregation
  final pulumi.Input<String> namespace;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace].
  /// [namespace] The namespace to use for aggregation
  WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace({
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

