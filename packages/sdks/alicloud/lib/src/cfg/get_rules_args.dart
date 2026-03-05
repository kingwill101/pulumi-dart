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
    this.configRuleState,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.riskLevel,
    this.ruleName,
    this.status,
  });

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
      configRuleState: (() { final guardedValue = map['configRuleState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      riskLevel: (() { final guardedValue = map['riskLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

