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
  GetAggregateConfigRulesArgs({
    pulumi.Output<String>? aggregateConfigRuleName,
    required pulumi.Output<String> aggregatorId,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? riskLevel,
    pulumi.Output<String>? status,
  }) :
      aggregateConfigRuleName = pulumi.Input.asOptionalInput<String>(aggregateConfigRuleName),
      aggregatorId = pulumi.Input.asInput<String>(aggregatorId),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      riskLevel = pulumi.Input.asOptionalInput<int>(riskLevel),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      aggregateConfigRuleName: map['aggregateConfigRuleName'] == null ? null : pulumi.Output.create<String>(map['aggregateConfigRuleName'] as String),
      aggregatorId: pulumi.Output.create<String>(map['aggregatorId'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      riskLevel: map['riskLevel'] == null ? null : pulumi.Output.create<int>(map['riskLevel'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

