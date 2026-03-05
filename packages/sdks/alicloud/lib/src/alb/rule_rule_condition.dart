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
      cookieConfig: (() { final guardedValue = map['cookieConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleRuleConditionCookieConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      headerConfig: (() { final guardedValue = map['headerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleRuleConditionHeaderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostConfig: (() { final guardedValue = map['hostConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleRuleConditionHostConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      methodConfig: (() { final guardedValue = map['methodConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleRuleConditionMethodConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pathConfig: (() { final guardedValue = map['pathConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleRuleConditionPathConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryStringConfig: (() { final guardedValue = map['queryStringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleRuleConditionQueryStringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responseHeaderConfig: (() { final guardedValue = map['responseHeaderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleRuleConditionResponseHeaderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responseStatusCodeConfig: (() { final guardedValue = map['responseStatusCodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleRuleConditionResponseStatusCodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceIpConfig: (() { final guardedValue = map['sourceIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleRuleConditionSourceIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

