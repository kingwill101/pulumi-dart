// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleActionRewriteConfig {
  /// The host name of the destination to which requests are redirected within ALB.
  final pulumi.Input<String> host;
  /// The path to which requests are to be redirected within ALB.
  final pulumi.Input<String> path;
  /// The query string of the request to be redirected within ALB.
  final pulumi.Input<String> query;

  /// Creates a new [GetRulesRuleRuleActionRewriteConfig].
  /// [host] The host name of the destination to which requests are redirected within ALB.
  /// [path] The path to which requests are to be redirected within ALB.
  /// [query] The query string of the request to be redirected within ALB.
  const GetRulesRuleRuleActionRewriteConfig({
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
      host: pulumi.Input.fromValue(map['host'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}

