// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_global_rulestack_countries_args_doc}
/// Arguments for listGlobalRulestackCountries.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_global_rulestack_countries_args_doc}
class ListGlobalRulestackCountriesArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  final pulumi.Input<String?>? skip;
  final pulumi.Input<int?>? top;

  /// Creates a new [ListGlobalRulestackCountriesArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  /// [skip] Optional.
  /// [top] Optional.
  const ListGlobalRulestackCountriesArgs({
    required this.globalRulestackName,
    this.skip,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'skip': ?skip,
      'top': ?top,
    };
  }

  factory ListGlobalRulestackCountriesArgs.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackCountriesArgs(
      globalRulestackName: pulumi.Input.fromValue(map['globalRulestackName'] as String),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
