// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace {
  /// The namespace to use for aggregation
  final String namespace;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace].
  /// [namespace] The namespace to use for aggregation
  WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace({
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namespace': namespace};
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace(
      namespace: map['namespace'] as String,
    );
  }
}
