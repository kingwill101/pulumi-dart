// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_global_rulestack_countries_args_doc}
/// Arguments for listGlobalRulestackCountries.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_global_rulestack_countries_args_doc}
class ListGlobalRulestackCountriesArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  final pulumi.Input<String>? skip;
  final pulumi.Input<int>? top;

  /// Creates a new [ListGlobalRulestackCountriesArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  /// [skip] Optional.
  /// [top] Optional.
  ListGlobalRulestackCountriesArgs({
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
      globalRulestackName: (map['globalRulestackName'] as String).input(),
      skip: map['skip'] == null ? null : (map['skip'] as String).input(),
      top: map['top'] == null ? null : (map['top'] as int).input(),
    );
  }
}

