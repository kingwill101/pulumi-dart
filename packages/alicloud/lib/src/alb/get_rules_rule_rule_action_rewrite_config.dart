// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleActionRewriteConfig {
  /// The host name of the destination to which requests are redirected within ALB.
  final String host;
  /// The path to which requests are to be redirected within ALB.
  final String path;
  /// The query string of the request to be redirected within ALB.
  final String query;

  /// Creates a new [GetRulesRuleRuleActionRewriteConfig].
  /// [host] The host name of the destination to which requests are redirected within ALB.
  /// [path] The path to which requests are to be redirected within ALB.
  /// [query] The query string of the request to be redirected within ALB.
  GetRulesRuleRuleActionRewriteConfig({
    required this.host,
    required this.path,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'path': path,
      'query': query,
    };
  }

  factory GetRulesRuleRuleActionRewriteConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionRewriteConfig(
      host: map['host'] as String,
      path: map['path'] as String,
      query: map['query'] as String,
    );
  }
}

