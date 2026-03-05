// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header.dart';
import 'rule_option.dart';

/// Definition of StatefulRule
class StatefulRule {
  /// Property action
  final pulumi.Input<String>? action;
  /// Property header
  final pulumi.Input<Header>? header;
  /// Property ruleOptions
  final pulumi.Input<List<RuleOption>>? ruleOptions;

  /// Creates a new [StatefulRule].
  /// [action] Property action
  /// [header] Property header
  /// [ruleOptions] Property ruleOptions
  StatefulRule({
    this.action,
    this.header,
    this.ruleOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'header': ?pulumi.Input.mapOptionalInputValue<Header, Map<String, dynamic>>(header, (value) => value.toMap()),
      'ruleOptions': ?pulumi.Input.mapOptionalInputValue<List<RuleOption>, List<Map<String, dynamic>>>(ruleOptions, (value) => pulumi.Input.encodeList<RuleOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StatefulRule.fromMap(Map<String, dynamic> map) {
    return StatefulRule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Header.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleOptions: (() { final guardedValue = map['ruleOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleOption>(guardedValue, (value) => RuleOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

