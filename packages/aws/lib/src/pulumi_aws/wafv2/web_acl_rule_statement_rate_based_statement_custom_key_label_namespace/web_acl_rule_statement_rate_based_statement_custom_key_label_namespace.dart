// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace {
  /// The namespace to use for aggregation
  final String namespace;

  WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace({
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace(
      namespace: map['namespace'] as String,
    );
  }
}
