// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_get_aggregate_config_rules_get_aggregate_config_rules_args_doc}
/// Arguments for getAggregateConfigRules.
/// {@endtemplate}
/// {@macro pulumi_cfg_get_aggregate_config_rules_get_aggregate_config_rules_args_doc}
class GetAggregateConfigRulesArgs {
  /// The config rule name.
  final pulumi.Input<String>? aggregateConfigRuleName;
  /// The ID of aggregator.
  final pulumi.Input<String> aggregatorId;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Aggregate Config Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Aggregate Config Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Risk Level. Valid values `1`: critical, `2`: warning, `3`: info.
  final pulumi.Input<int>? riskLevel;
  /// The state of the config rule, valid values: `ACTIVE`, `DELETING`, `EVALUATING` and `INACTIVE`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAggregateConfigRulesArgs].
  /// [aggregateConfigRuleName] The config rule name.
  /// [aggregatorId] The ID of aggregator.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Aggregate Config Rule IDs.
  /// [nameRegex] A regex string to filter results by Aggregate Config Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [riskLevel] The Risk Level. Valid values `1`: critical, `2`: warning, `3`: info.
  /// [status] The state of the config rule, valid values: `ACTIVE`, `DELETING`, `EVALUATING` and `INACTIVE`.
  const GetAggregateConfigRulesArgs({
    this.aggregateConfigRuleName,
    required this.aggregatorId,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.riskLevel,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateConfigRuleName': ?aggregateConfigRuleName,
      'aggregatorId': aggregatorId,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'riskLevel': ?riskLevel,
      'status': ?status,
    };
  }

  factory GetAggregateConfigRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetAggregateConfigRulesArgs(
      aggregateConfigRuleName: (() { final guardedValue = map['aggregateConfigRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aggregatorId: pulumi.Input.fromValue(map['aggregatorId'] as String),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      riskLevel: (() { final guardedValue = map['riskLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

