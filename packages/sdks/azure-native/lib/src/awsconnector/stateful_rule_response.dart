// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_response.dart';
import 'rule_option_response.dart';

/// Definition of StatefulRule
class StatefulRuleResponse {
  /// Property action
  final pulumi.Input<String>? action;
  /// Property header
  final pulumi.Input<HeaderResponse>? header;
  /// Property ruleOptions
  final pulumi.Input<List<RuleOptionResponse>>? ruleOptions;

  /// Creates a new [StatefulRuleResponse].
  /// [action] Property action
  /// [header] Property header
  /// [ruleOptions] Property ruleOptions
  StatefulRuleResponse({
    this.action,
    this.header,
    this.ruleOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'header': ?pulumi.Input.mapOptionalInputValue<HeaderResponse, Map<String, dynamic>>(header, (value) => value.toMap()),
      'ruleOptions': ?pulumi.Input.mapOptionalInputValue<List<RuleOptionResponse>, List<Map<String, dynamic>>>(ruleOptions, (value) => pulumi.Input.encodeList<RuleOptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StatefulRuleResponse.fromMap(Map<String, dynamic> map) {
    return StatefulRuleResponse(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      header: map['header'] == null ? null : (HeaderResponse.fromMap((map['header'] as Map).cast<String, dynamic>())).input(),
      ruleOptions: map['ruleOptions'] == null ? null : (pulumi.Input.decodeList<RuleOptionResponse>(map['ruleOptions'], (value) => RuleOptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

