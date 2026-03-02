// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<RuleRuleConditionCookieConfig>? cookieConfig;
  /// The configuration of the header field. See `header_config` below.
  final pulumi.Input<RuleRuleConditionHeaderConfig>? headerConfig;
  /// The configuration of the host field. See `host_config` below.
  final pulumi.Input<RuleRuleConditionHostConfig>? hostConfig;
  /// The configuration of the request method. See `method_config` below.
  final pulumi.Input<RuleRuleConditionMethodConfig>? methodConfig;
  /// The configuration of the path for the request to be forwarded. See `path_config` below.
  final pulumi.Input<RuleRuleConditionPathConfig>? pathConfig;
  /// The configuration of the query string. See `query_string_config` below.
  final pulumi.Input<RuleRuleConditionQueryStringConfig>? queryStringConfig;
  /// The configuration of the header field. See `response_header_config` below.
  final pulumi.Input<RuleRuleConditionResponseHeaderConfig>? responseHeaderConfig;
  /// The configuration of the header field. See `response_status_code_config` below.
  final pulumi.Input<RuleRuleConditionResponseStatusCodeConfig>? responseStatusCodeConfig;
  /// The Based on source IP traffic matching. Required and valid when Type is SourceIP. See `source_ip_config` below.
  final pulumi.Input<RuleRuleConditionSourceIpConfig>? sourceIpConfig;
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
  final pulumi.Input<String> type;

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
      'cookieConfig': ?pulumi.Input.mapOptionalInputValue<RuleRuleConditionCookieConfig, Map<String, dynamic>>(cookieConfig, (value) => value.toMap()),
      'headerConfig': ?pulumi.Input.mapOptionalInputValue<RuleRuleConditionHeaderConfig, Map<String, dynamic>>(headerConfig, (value) => value.toMap()),
      'hostConfig': ?pulumi.Input.mapOptionalInputValue<RuleRuleConditionHostConfig, Map<String, dynamic>>(hostConfig, (value) => value.toMap()),
      'methodConfig': ?pulumi.Input.mapOptionalInputValue<RuleRuleConditionMethodConfig, Map<String, dynamic>>(methodConfig, (value) => value.toMap()),
      'pathConfig': ?pulumi.Input.mapOptionalInputValue<RuleRuleConditionPathConfig, Map<String, dynamic>>(pathConfig, (value) => value.toMap()),
      'queryStringConfig': ?pulumi.Input.mapOptionalInputValue<RuleRuleConditionQueryStringConfig, Map<String, dynamic>>(queryStringConfig, (value) => value.toMap()),
      'responseHeaderConfig': ?pulumi.Input.mapOptionalInputValue<RuleRuleConditionResponseHeaderConfig, Map<String, dynamic>>(responseHeaderConfig, (value) => value.toMap()),
      'responseStatusCodeConfig': ?pulumi.Input.mapOptionalInputValue<RuleRuleConditionResponseStatusCodeConfig, Map<String, dynamic>>(responseStatusCodeConfig, (value) => value.toMap()),
      'sourceIpConfig': ?pulumi.Input.mapOptionalInputValue<RuleRuleConditionSourceIpConfig, Map<String, dynamic>>(sourceIpConfig, (value) => value.toMap()),
      'type': type,
    };
  }

  factory RuleRuleCondition.fromMap(Map<String, dynamic> map) {
    return RuleRuleCondition(
      cookieConfig: map['cookieConfig'] == null ? null : (RuleRuleConditionCookieConfig.fromMap((map['cookieConfig']! as Map).cast<String, dynamic>())).input(),
      headerConfig: map['headerConfig'] == null ? null : (RuleRuleConditionHeaderConfig.fromMap((map['headerConfig']! as Map).cast<String, dynamic>())).input(),
      hostConfig: map['hostConfig'] == null ? null : (RuleRuleConditionHostConfig.fromMap((map['hostConfig']! as Map).cast<String, dynamic>())).input(),
      methodConfig: map['methodConfig'] == null ? null : (RuleRuleConditionMethodConfig.fromMap((map['methodConfig']! as Map).cast<String, dynamic>())).input(),
      pathConfig: map['pathConfig'] == null ? null : (RuleRuleConditionPathConfig.fromMap((map['pathConfig']! as Map).cast<String, dynamic>())).input(),
      queryStringConfig: map['queryStringConfig'] == null ? null : (RuleRuleConditionQueryStringConfig.fromMap((map['queryStringConfig']! as Map).cast<String, dynamic>())).input(),
      responseHeaderConfig: map['responseHeaderConfig'] == null ? null : (RuleRuleConditionResponseHeaderConfig.fromMap((map['responseHeaderConfig']! as Map).cast<String, dynamic>())).input(),
      responseStatusCodeConfig: map['responseStatusCodeConfig'] == null ? null : (RuleRuleConditionResponseStatusCodeConfig.fromMap((map['responseStatusCodeConfig']! as Map).cast<String, dynamic>())).input(),
      sourceIpConfig: map['sourceIpConfig'] == null ? null : (RuleRuleConditionSourceIpConfig.fromMap((map['sourceIpConfig']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

