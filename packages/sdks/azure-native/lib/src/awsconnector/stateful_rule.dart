// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header.dart';
import 'rule_option.dart';

/// Definition of StatefulRule
class StatefulRule {
  /// Property action
  final String? action;
  /// Property header
  final Header? header;
  /// Property ruleOptions
  final List<RuleOption>? ruleOptions;

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
      'header': ?header == null ? null : header!.toMap(),
      'ruleOptions': ?ruleOptions == null ? null : pulumi.Input.encodeList<RuleOption, Map<String, dynamic>>(ruleOptions!, (value) => value.toMap()),
    };
  }

  factory StatefulRule.fromMap(Map<String, dynamic> map) {
    return StatefulRule(
      action: map['action'] == null ? null : map['action'] as String,
      header: map['header'] == null ? null : Header.fromMap((map['header'] as Map).cast<String, dynamic>()),
      ruleOptions: map['ruleOptions'] == null ? null : pulumi.Input.decodeList<RuleOption>(map['ruleOptions'], (value) => RuleOption.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

