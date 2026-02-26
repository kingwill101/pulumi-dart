// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation {
  /// Relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content.
  final int priority;

  /// Transformation to apply, please refer to the Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_TextTransformation.html) for more details.
  final String type;

  WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation({
    required this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    map['type'] = type;
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation(
      priority: map['priority'] as int,
      type: map['type'] as String,
    );
  }
}
