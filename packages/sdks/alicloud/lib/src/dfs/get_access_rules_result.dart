// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_rules_rule.dart';

/// Result data returned by getAccessRules.
class GetAccessRulesResult {
  final String accessGroupId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetAccessRulesRule> rules;

  /// Creates a new [GetAccessRulesResult].
  /// [accessGroupId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [rules] Required.
  GetAccessRulesResult({
    required this.accessGroupId,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': accessGroupId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetAccessRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetAccessRulesResult.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesResult(
      accessGroupId: map['accessGroupId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      rules: pulumi.Input.decodeList<GetAccessRulesRule>(map['rules'], (value) => GetAccessRulesRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

