// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleActionRedirectConfig {
  /// The host name of the destination to which requests are redirected within ALB.
  final pulumi.Input<String> host;
  /// The redirect method.
  final pulumi.Input<String> httpCode;
  /// The path to which requests are to be redirected within ALB.
  final pulumi.Input<String> path;
  /// The port of the destination to which requests are redirected.
  final pulumi.Input<String> port;
  /// The protocol of the requests to be redirected.
  final pulumi.Input<String> protocol;
  /// The query string of the request to be redirected within ALB.
  final pulumi.Input<String> query;

  /// Creates a new [GetRulesRuleRuleActionRedirectConfig].
  /// [host] The host name of the destination to which requests are redirected within ALB.
  /// [httpCode] The redirect method.
  /// [path] The path to which requests are to be redirected within ALB.
  /// [port] The port of the destination to which requests are redirected.
  /// [protocol] The protocol of the requests to be redirected.
  /// [query] The query string of the request to be redirected within ALB.
  GetRulesRuleRuleActionRedirectConfig({
    required this.host,
    required this.httpCode,
    required this.path,
    required this.port,
    required this.protocol,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'httpCode': httpCode,
      'path': path,
      'port': port,
      'protocol': protocol,
      'query': query,
    };
  }

  factory GetRulesRuleRuleActionRedirectConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionRedirectConfig(
      host: (map['host'] as String).input(),
      httpCode: (map['httpCode'] as String).input(),
      path: (map['path'] as String).input(),
      port: (map['port'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      query: (map['query'] as String).input(),
    );
  }
}

