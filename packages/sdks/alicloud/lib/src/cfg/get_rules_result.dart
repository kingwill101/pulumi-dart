// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule.dart';

/// Result data returned by getRules.
class GetRulesResult {
  /// The state of the Config Rule.
  final String? configRuleState;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Config Rule IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of Config Rule names.
  final List<String> names;
  final String? outputFile;
  /// The risk level of the Config Rule.
  final int? riskLevel;
  /// The name of the Config Rule.
  final String? ruleName;
  /// A list of Config Rules. Each element contains the following attributes:
  final List<GetRulesRule> rules;
  /// (Available since v1.124.1) The status of config rule.
  final String? status;

  /// Creates a new [GetRulesResult].
  /// [configRuleState] The state of the Config Rule.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Config Rule IDs.
  /// [nameRegex] Optional.
  /// [names] A list of Config Rule names.
  /// [outputFile] Optional.
  /// [riskLevel] The risk level of the Config Rule.
  /// [ruleName] The name of the Config Rule.
  /// [rules] A list of Config Rules. Each element contains the following attributes:
  /// [status] (Available since v1.124.1) The status of config rule.
  GetRulesResult({
    this.configRuleState,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.riskLevel,
    this.ruleName,
    required this.rules,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleState': ?configRuleState,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'riskLevel': ?riskLevel,
      'ruleName': ?ruleName,
      'rules': pulumi.Input.encodeList<GetRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetRulesResult.fromMap(Map<String, dynamic> map) {
    return GetRulesResult(
      configRuleState: map['configRuleState'] == null ? null : map['configRuleState'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      riskLevel: map['riskLevel'] == null ? null : map['riskLevel'] as int,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      rules: pulumi.Input.decodeList<GetRulesRule>(map['rules'], (value) => GetRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

