// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_rule_condition_cookie_config.dart';
import 'get_rules_rule_rule_condition_header_config.dart';
import 'get_rules_rule_rule_condition_host_config.dart';
import 'get_rules_rule_rule_condition_method_config.dart';
import 'get_rules_rule_rule_condition_path_config.dart';
import 'get_rules_rule_rule_condition_query_string_config.dart';
import 'get_rules_rule_rule_condition_source_ip_config.dart';

class GetRulesRuleRuleCondition {
  /// The configuration of the cookie.
  final pulumi.Input<List<GetRulesRuleRuleConditionCookieConfig>> cookieConfigs;
  /// The configuration of the header field.
  final pulumi.Input<List<GetRulesRuleRuleConditionHeaderConfig>> headerConfigs;
  /// The configuration of the host.
  final pulumi.Input<List<GetRulesRuleRuleConditionHostConfig>> hostConfigs;
  /// The configuration of the request method.
  final pulumi.Input<List<GetRulesRuleRuleConditionMethodConfig>> methodConfigs;
  /// The configuration of the path for the request to be forwarded.
  final pulumi.Input<List<GetRulesRuleRuleConditionPathConfig>> pathConfigs;
  /// The configuration of the query string.
  final pulumi.Input<List<GetRulesRuleRuleConditionQueryStringConfig>> queryStringConfigs;
  /// The Based on source IP traffic matching.
  final pulumi.Input<List<GetRulesRuleRuleConditionSourceIpConfig>> sourceIpConfigs;
  /// The type of the forwarding rule.
  final pulumi.Input<String> type;

  /// Creates a new [GetRulesRuleRuleCondition].
  /// [cookieConfigs] The configuration of the cookie.
  /// [headerConfigs] The configuration of the header field.
  /// [hostConfigs] The configuration of the host.
  /// [methodConfigs] The configuration of the request method.
  /// [pathConfigs] The configuration of the path for the request to be forwarded.
  /// [queryStringConfigs] The configuration of the query string.
  /// [sourceIpConfigs] The Based on source IP traffic matching.
  /// [type] The type of the forwarding rule.
  const GetRulesRuleRuleCondition({
    required this.cookieConfigs,
    required this.headerConfigs,
    required this.hostConfigs,
    required this.methodConfigs,
    required this.pathConfigs,
    required this.queryStringConfigs,
    required this.sourceIpConfigs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleConditionCookieConfig>, List<Map<String, dynamic>>>(cookieConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleConditionCookieConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headerConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleConditionHeaderConfig>, List<Map<String, dynamic>>>(headerConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleConditionHeaderConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleConditionHostConfig>, List<Map<String, dynamic>>>(hostConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleConditionHostConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'methodConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleConditionMethodConfig>, List<Map<String, dynamic>>>(methodConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleConditionMethodConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pathConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleConditionPathConfig>, List<Map<String, dynamic>>>(pathConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleConditionPathConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryStringConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleConditionQueryStringConfig>, List<Map<String, dynamic>>>(queryStringConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleConditionQueryStringConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceIpConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleConditionSourceIpConfig>, List<Map<String, dynamic>>>(sourceIpConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleConditionSourceIpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GetRulesRuleRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleCondition(
      cookieConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesRuleRuleConditionCookieConfig>(map['cookieConfigs']!, (value) => GetRulesRuleRuleConditionCookieConfig.fromMap((value as Map).cast<String, dynamic>()))),
      headerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesRuleRuleConditionHeaderConfig>(map['headerConfigs']!, (value) => GetRulesRuleRuleConditionHeaderConfig.fromMap((value as Map).cast<String, dynamic>()))),
      hostConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesRuleRuleConditionHostConfig>(map['hostConfigs']!, (value) => GetRulesRuleRuleConditionHostConfig.fromMap((value as Map).cast<String, dynamic>()))),
      methodConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesRuleRuleConditionMethodConfig>(map['methodConfigs']!, (value) => GetRulesRuleRuleConditionMethodConfig.fromMap((value as Map).cast<String, dynamic>()))),
      pathConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesRuleRuleConditionPathConfig>(map['pathConfigs']!, (value) => GetRulesRuleRuleConditionPathConfig.fromMap((value as Map).cast<String, dynamic>()))),
      queryStringConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesRuleRuleConditionQueryStringConfig>(map['queryStringConfigs']!, (value) => GetRulesRuleRuleConditionQueryStringConfig.fromMap((value as Map).cast<String, dynamic>()))),
      sourceIpConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesRuleRuleConditionSourceIpConfig>(map['sourceIpConfigs']!, (value) => GetRulesRuleRuleConditionSourceIpConfig.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

