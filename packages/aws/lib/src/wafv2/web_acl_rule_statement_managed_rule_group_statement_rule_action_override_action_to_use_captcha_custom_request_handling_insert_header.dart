// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader {
  /// Name of the custom header. For custom request header insertion, when AWS WAF inserts the header into the request, it prefixes this name `x-amzn-waf-`, to avoid confusion with the headers that are already in the request. For example, for the header name `sample`, AWS WAF inserts the header `x-amzn-waf-sample`.
  final String name;

  /// Value of the custom header.
  final String value;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader].
  /// [name] Name of the custom header. For custom request header insertion, when AWS WAF inserts the header into the request, it prefixes this name `x-amzn-waf-`, to avoid confusion with the headers that are already in the request. For example, for the header name `sample`, AWS WAF inserts the header `x-amzn-waf-sample`.
  /// [value] Value of the custom header.
  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
