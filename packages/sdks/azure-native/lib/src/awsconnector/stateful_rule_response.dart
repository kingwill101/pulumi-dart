// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_response.dart';
import 'rule_option_response.dart';

/// Definition of StatefulRule
class StatefulRuleResponse {
  /// Property action
  final pulumi.Input<String?>? action;
  /// Property header
  final pulumi.Input<HeaderResponse?>? header;
  /// Property ruleOptions
  final pulumi.Input<List<RuleOptionResponse>?>? ruleOptions;

  /// Creates a new [StatefulRuleResponse].
  /// [action] Property action
  /// [header] Property header
  /// [ruleOptions] Property ruleOptions
  const StatefulRuleResponse({
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
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HeaderResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleOptions: (() { final guardedValue = map['ruleOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleOptionResponse>(guardedValue, (value) => RuleOptionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
