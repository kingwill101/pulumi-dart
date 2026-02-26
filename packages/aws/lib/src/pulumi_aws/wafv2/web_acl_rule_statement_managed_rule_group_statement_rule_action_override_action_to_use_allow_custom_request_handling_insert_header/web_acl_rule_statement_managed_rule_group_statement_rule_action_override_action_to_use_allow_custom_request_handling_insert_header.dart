// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader {
  /// Name of the custom header. For custom request header insertion, when AWS WAF inserts the header into the request, it prefixes this name `x-amzn-waf-`, to avoid confusion with the headers that are already in the request. For example, for the header name <span pulumi-lang-nodejs="`sample`" pulumi-lang-dotnet="`Sample`" pulumi-lang-go="`sample`" pulumi-lang-python="`sample`" pulumi-lang-yaml="`sample`" pulumi-lang-java="`sample`">`sample`</span>, AWS WAF inserts the header `x-amzn-waf-sample`.
  final String name;

  /// Value of the custom header.
  final String value;

  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
