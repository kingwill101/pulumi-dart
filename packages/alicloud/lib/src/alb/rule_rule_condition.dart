// ignore_for_file: unused_element, unnecessary_cast

import 'rule_rule_condition_cookie_config.dart';
import 'rule_rule_condition_header_config.dart';
import 'rule_rule_condition_host_config.dart';
import 'rule_rule_condition_method_config.dart';
import 'rule_rule_condition_path_config.dart';
import 'rule_rule_condition_query_string_config.dart';
import 'rule_rule_condition_response_header_config.dart';
import 'rule_rule_condition_response_status_code_config.dart';
import 'rule_rule_condition_source_ip_config.dart';

class RuleRuleCondition {
  /// The configuration of the cookie. See See `cookie_config` below.
  final RuleRuleConditionCookieConfig? cookieConfig;
  /// The configuration of the header field. See `header_config` below.
  final RuleRuleConditionHeaderConfig? headerConfig;
  /// The configuration of the host field. See `host_config` below.
  final RuleRuleConditionHostConfig? hostConfig;
  /// The configuration of the request method. See `method_config` below.
  final RuleRuleConditionMethodConfig? methodConfig;
  /// The configuration of the path for the request to be forwarded. See `path_config` below.
  final RuleRuleConditionPathConfig? pathConfig;
  /// The configuration of the query string. See `query_string_config` below.
  final RuleRuleConditionQueryStringConfig? queryStringConfig;
  /// The configuration of the header field. See `response_header_config` below.
  final RuleRuleConditionResponseHeaderConfig? responseHeaderConfig;
  /// The configuration of the header field. See `response_status_code_config` below.
  final RuleRuleConditionResponseStatusCodeConfig? responseStatusCodeConfig;
  /// The Based on source IP traffic matching. Required and valid when Type is SourceIP. See `source_ip_config` below.
  final RuleRuleConditionSourceIpConfig? sourceIpConfig;
  /// The type of the forwarding rule. Valid values:
  /// - `Host`: Requests are forwarded based on hosts.
  /// - `Path`: Requests are forwarded based on the path.
  /// - `Header`: Requests are forwarded based on the HTTP header field.
  /// - `QueryString`: Requests are forwarded based on the query string.
  /// - `Method`: Request are forwarded based on the request method.
  /// - `Cookie`: Requests are forwarded based on the cookie.
  /// - `SourceIp`: Requests are forwarded based on the source ip. **NOTE:** The `SourceIp` option is available since 1.162.0.
  /// - `ResponseHeader`: Response header. **NOTE:** The `SourceIp` option is available since 1.213.1.
  /// - `ResponseStatusCode`: Response status code. **NOTE:** The `SourceIp` option is available since 1.213.1.
  final String type;

  /// Creates a new [RuleRuleCondition].
  /// [cookieConfig] The configuration of the cookie. See See `cookie_config` below.
  /// [headerConfig] The configuration of the header field. See `header_config` below.
  /// [hostConfig] The configuration of the host field. See `host_config` below.
  /// [methodConfig] The configuration of the request method. See `method_config` below.
  /// [pathConfig] The configuration of the path for the request to be forwarded. See `path_config` below.
  /// [queryStringConfig] The configuration of the query string. See `query_string_config` below.
  /// [responseHeaderConfig] The configuration of the header field. See `response_header_config` below.
  /// [responseStatusCodeConfig] The configuration of the header field. See `response_status_code_config` below.
  /// [sourceIpConfig] The Based on source IP traffic matching. Required and valid when Type is SourceIP. See `source_ip_config` below.
  /// [type] The type of the forwarding rule. Valid values:
  RuleRuleCondition({
    this.cookieConfig,
    this.headerConfig,
    this.hostConfig,
    this.methodConfig,
    this.pathConfig,
    this.queryStringConfig,
    this.responseHeaderConfig,
    this.responseStatusCodeConfig,
    this.sourceIpConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieConfig': ?cookieConfig == null ? null : cookieConfig!.toMap(),
      'headerConfig': ?headerConfig == null ? null : headerConfig!.toMap(),
      'hostConfig': ?hostConfig == null ? null : hostConfig!.toMap(),
      'methodConfig': ?methodConfig == null ? null : methodConfig!.toMap(),
      'pathConfig': ?pathConfig == null ? null : pathConfig!.toMap(),
      'queryStringConfig': ?queryStringConfig == null ? null : queryStringConfig!.toMap(),
      'responseHeaderConfig': ?responseHeaderConfig == null ? null : responseHeaderConfig!.toMap(),
      'responseStatusCodeConfig': ?responseStatusCodeConfig == null ? null : responseStatusCodeConfig!.toMap(),
      'sourceIpConfig': ?sourceIpConfig == null ? null : sourceIpConfig!.toMap(),
      'type': type,
    };
  }

  factory RuleRuleCondition.fromMap(Map<String, dynamic> map) {
    return RuleRuleCondition(
      cookieConfig: map['cookieConfig'] == null ? null : RuleRuleConditionCookieConfig.fromMap((map['cookieConfig'] as Map).cast<String, dynamic>()),
      headerConfig: map['headerConfig'] == null ? null : RuleRuleConditionHeaderConfig.fromMap((map['headerConfig'] as Map).cast<String, dynamic>()),
      hostConfig: map['hostConfig'] == null ? null : RuleRuleConditionHostConfig.fromMap((map['hostConfig'] as Map).cast<String, dynamic>()),
      methodConfig: map['methodConfig'] == null ? null : RuleRuleConditionMethodConfig.fromMap((map['methodConfig'] as Map).cast<String, dynamic>()),
      pathConfig: map['pathConfig'] == null ? null : RuleRuleConditionPathConfig.fromMap((map['pathConfig'] as Map).cast<String, dynamic>()),
      queryStringConfig: map['queryStringConfig'] == null ? null : RuleRuleConditionQueryStringConfig.fromMap((map['queryStringConfig'] as Map).cast<String, dynamic>()),
      responseHeaderConfig: map['responseHeaderConfig'] == null ? null : RuleRuleConditionResponseHeaderConfig.fromMap((map['responseHeaderConfig'] as Map).cast<String, dynamic>()),
      responseStatusCodeConfig: map['responseStatusCodeConfig'] == null ? null : RuleRuleConditionResponseStatusCodeConfig.fromMap((map['responseStatusCodeConfig'] as Map).cast<String, dynamic>()),
      sourceIpConfig: map['sourceIpConfig'] == null ? null : RuleRuleConditionSourceIpConfig.fromMap((map['sourceIpConfig'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

