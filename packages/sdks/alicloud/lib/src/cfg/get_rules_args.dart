// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_get_rules_get_rules_args_doc}
/// Arguments for getRules.
/// {@endtemplate}
/// {@macro pulumi_cfg_get_rules_get_rules_args_doc}
class GetRulesArgs {
  /// Field `config_rule_state` has been deprecated from provider version 1.124.1. New field `status` instead.
  final pulumi.Input<String>? configRuleState;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Config Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The risk level of Config Rule. Valid values: `1`: Critical ,`2`: Warning , `3`: Info.
  final pulumi.Input<int>? riskLevel;
  /// The name of config rule.
  final pulumi.Input<String>? ruleName;
  /// The status of the config rule, valid values: `ACTIVE`, `DELETING`, `EVALUATING` and `INACTIVE`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetRulesArgs].
  /// [configRuleState] Field `config_rule_state` has been deprecated from provider version 1.124.1. New field `status` instead.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Config Rule IDs.
  /// [nameRegex] A regex string to filter results by rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [riskLevel] The risk level of Config Rule. Valid values: `1`: Critical ,`2`: Warning , `3`: Info.
  /// [ruleName] The name of config rule.
  /// [status] The status of the config rule, valid values: `ACTIVE`, `DELETING`, `EVALUATING` and `INACTIVE`.
  GetRulesArgs({
    pulumi.Output<String>? configRuleState,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? riskLevel,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? status,
  }) :
      configRuleState = pulumi.Input.asOptionalInput<String>(configRuleState),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      riskLevel = pulumi.Input.asOptionalInput<int>(riskLevel),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleState': ?configRuleState,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'riskLevel': ?riskLevel,
      'ruleName': ?ruleName,
      'status': ?status,
    };
  }

  factory GetRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesArgs(
      configRuleState: map['configRuleState'] == null ? null : pulumi.Output.create<String>(map['configRuleState'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      riskLevel: map['riskLevel'] == null ? null : pulumi.Output.create<int>(map['riskLevel'] as int),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

