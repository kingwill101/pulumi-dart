// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleActionBlockCustomResponseResponseHeader {
  /// Name of the custom header. For custom request header insertion, when AWS WAF inserts the header into the request, it prefixes this name `x-amzn-waf-`, to avoid confusion with the headers that are already in the request. For example, for the header name `sample`, AWS WAF inserts the header `x-amzn-waf-sample`.
  final String name;

  /// Value of the custom header.
  final String value;

  /// Creates a new [WebAclRuleActionBlockCustomResponseResponseHeader].
  /// [name] Name of the custom header. For custom request header insertion, when AWS WAF inserts the header into the request, it prefixes this name `x-amzn-waf-`, to avoid confusion with the headers that are already in the request. For example, for the header name `sample`, AWS WAF inserts the header `x-amzn-waf-sample`.
  /// [value] Value of the custom header.
  WebAclRuleActionBlockCustomResponseResponseHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory WebAclRuleActionBlockCustomResponseResponseHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleActionBlockCustomResponseResponseHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
