// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule.dart';

/// Result data returned by getRules.
class GetRulesResult {
  final String? endpointId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetRulesRule> rules;

  /// Creates a new [GetRulesResult].
  /// [endpointId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [rules] Required.
  GetRulesResult({
    this.endpointId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': ?endpointId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetRulesResult.fromMap(Map<String, dynamic> map) {
    return GetRulesResult(
      endpointId: map['endpointId'] == null ? null : map['endpointId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      rules: pulumi.Input.decodeList<GetRulesRule>(map['rules'], (value) => GetRulesRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

