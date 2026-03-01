// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_rewrite_rule_set_rewrite_rule_condition.dart';
import 'get_application_gateway_rewrite_rule_set_rewrite_rule_request_header_configuration.dart';
import 'get_application_gateway_rewrite_rule_set_rewrite_rule_response_header_configuration.dart';
import 'get_application_gateway_rewrite_rule_set_rewrite_rule_url.dart';

class GetApplicationGatewayRewriteRuleSetRewriteRule {
  /// One or more `condition` blocks as defined above.
  final List<GetApplicationGatewayRewriteRuleSetRewriteRuleCondition> conditions;
  /// The name of this Application Gateway.
  final String name;
  /// One or more `request_header_configuration` blocks as defined above.
  final List<GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration> requestHeaderConfigurations;
  /// One or more `response_header_configuration` blocks as defined above.
  final List<GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration> responseHeaderConfigurations;
  /// Rule sequence of the Rewrite Rule that determines the order of execution in a set.
  final int ruleSequence;
  /// One `url` block as defined below
  final List<GetApplicationGatewayRewriteRuleSetRewriteRuleUrl> urls;

  /// Creates a new [GetApplicationGatewayRewriteRuleSetRewriteRule].
  /// [conditions] One or more `condition` blocks as defined above.
  /// [name] The name of this Application Gateway.
  /// [requestHeaderConfigurations] One or more `request_header_configuration` blocks as defined above.
  /// [responseHeaderConfigurations] One or more `response_header_configuration` blocks as defined above.
  /// [ruleSequence] Rule sequence of the Rewrite Rule that determines the order of execution in a set.
  /// [urls] One `url` block as defined below
  GetApplicationGatewayRewriteRuleSetRewriteRule({
    required this.conditions,
    required this.name,
    required this.requestHeaderConfigurations,
    required this.responseHeaderConfigurations,
    required this.ruleSequence,
    required this.urls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.encodeList<GetApplicationGatewayRewriteRuleSetRewriteRuleCondition, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'name': name,
      'requestHeaderConfigurations': pulumi.Input.encodeList<GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration, Map<String, dynamic>>(requestHeaderConfigurations, (value) => value.toMap()),
      'responseHeaderConfigurations': pulumi.Input.encodeList<GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration, Map<String, dynamic>>(responseHeaderConfigurations, (value) => value.toMap()),
      'ruleSequence': ruleSequence,
      'urls': pulumi.Input.encodeList<GetApplicationGatewayRewriteRuleSetRewriteRuleUrl, Map<String, dynamic>>(urls, (value) => value.toMap()),
    };
  }

  factory GetApplicationGatewayRewriteRuleSetRewriteRule.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRewriteRuleSetRewriteRule(
      conditions: pulumi.Input.decodeList<GetApplicationGatewayRewriteRuleSetRewriteRuleCondition>(map['conditions'], (value) => GetApplicationGatewayRewriteRuleSetRewriteRuleCondition.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      requestHeaderConfigurations: pulumi.Input.decodeList<GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration>(map['requestHeaderConfigurations'], (value) => GetApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      responseHeaderConfigurations: pulumi.Input.decodeList<GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration>(map['responseHeaderConfigurations'], (value) => GetApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      ruleSequence: map['ruleSequence'] as int,
      urls: pulumi.Input.decodeList<GetApplicationGatewayRewriteRuleSetRewriteRuleUrl>(map['urls'], (value) => GetApplicationGatewayRewriteRuleSetRewriteRuleUrl.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

