// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_scaling_rules_rule.dart';

/// Result data returned by getApplicationScalingRules.
class GetApplicationScalingRulesResult {
  final String appId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetApplicationScalingRulesRule> rules;

  /// Creates a new [GetApplicationScalingRulesResult].
  /// [appId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [rules] Required.
  GetApplicationScalingRulesResult({
    required this.appId,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetApplicationScalingRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetApplicationScalingRulesResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesResult(
      appId: map['appId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      rules: pulumi.Input.decodeList<GetApplicationScalingRulesRule>(map['rules'], (value) => GetApplicationScalingRulesRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

