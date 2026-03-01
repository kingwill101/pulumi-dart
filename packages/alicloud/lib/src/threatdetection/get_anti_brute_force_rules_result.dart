// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_anti_brute_force_rules_rule.dart';

/// Result data returned by getAntiBruteForceRules.
class GetAntiBruteForceRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Anti Brute Force Rule IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Anti Brute Force Rules.
  final List<String> names;
  final String? outputFile;
  /// A list of Anti Brute Force Rule Entries. Each element contains the following attributes:
  final List<GetAntiBruteForceRulesRule> rules;

  /// Creates a new [GetAntiBruteForceRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Anti Brute Force Rule IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Anti Brute Force Rules.
  /// [outputFile] Optional.
  /// [rules] A list of Anti Brute Force Rule Entries. Each element contains the following attributes:
  GetAntiBruteForceRulesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetAntiBruteForceRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetAntiBruteForceRulesResult.fromMap(Map<String, dynamic> map) {
    return GetAntiBruteForceRulesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      rules: pulumi.Input.decodeList<GetAntiBruteForceRulesRule>(map['rules'], (value) => GetAntiBruteForceRulesRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

