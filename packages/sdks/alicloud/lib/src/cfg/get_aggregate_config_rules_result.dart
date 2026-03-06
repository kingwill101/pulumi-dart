// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_config_rules_rule.dart';

/// Result data returned by getAggregateConfigRules.
class GetAggregateConfigRulesResult {
  /// The name of the rule.
  final String? aggregateConfigRuleName;
  /// The ID of Aggregator.
  final String aggregatorId;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Aggregate Config Rule names.
  final List<String> names;
  final String? outputFile;
  /// The risk level of the resources that are not compliant with the rule. Valid values: `1`: critical, `2`: warning, `3`: info.
  final int? riskLevel;
  /// A list of Config Aggregate Config Rules. Each element contains the following attributes:
  final List<GetAggregateConfigRulesRule> rules;
  /// The status of the rule.
  final String? status;

  /// Creates a new [GetAggregateConfigRulesResult].
  /// [aggregateConfigRuleName] The name of the rule.
  /// [aggregatorId] The ID of Aggregator.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Aggregate Config Rule names.
  /// [outputFile] Optional.
  /// [riskLevel] The risk level of the resources that are not compliant with the rule. Valid values: `1`: critical, `2`: warning, `3`: info.
  /// [rules] A list of Config Aggregate Config Rules. Each element contains the following attributes:
  /// [status] The status of the rule.
  const GetAggregateConfigRulesResult({
    this.aggregateConfigRuleName,
    required this.aggregatorId,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.riskLevel,
    required this.rules,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateConfigRuleName': ?aggregateConfigRuleName,
      'aggregatorId': aggregatorId,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'riskLevel': ?riskLevel,
      'rules': pulumi.Input.encodeList<GetAggregateConfigRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetAggregateConfigRulesResult.fromMap(Map<String, dynamic> map) {
    return GetAggregateConfigRulesResult(
      aggregateConfigRuleName: (() { final guardedValue = map['aggregateConfigRuleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aggregatorId: map['aggregatorId'] as String,
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      riskLevel: (() { final guardedValue = map['riskLevel']; if (guardedValue == null) return null; return guardedValue as int; })(),
      rules: pulumi.Input.decodeList<GetAggregateConfigRulesRule>(map['rules']!, (value) => GetAggregateConfigRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

