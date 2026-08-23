// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lifecycle_policy_document_rule.dart';

/// Result data returned by getLifecyclePolicyDocument.
class GetLifecyclePolicyDocumentResult {
  /// The above arguments serialized as a standard JSON policy document.
  final String json;
  final List<GetLifecyclePolicyDocumentRule> rules;

  /// Creates a new [GetLifecyclePolicyDocumentResult].
  /// [json] The above arguments serialized as a standard JSON policy document.
  /// [rules] Required.
  const GetLifecyclePolicyDocumentResult({
    required this.json,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'json': json,
      'rules': pulumi.Input.encodeList<GetLifecyclePolicyDocumentRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetLifecyclePolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentResult(
      json: map['json'] as String,
      rules: pulumi.Input.decodeList<GetLifecyclePolicyDocumentRule>(map['rules']!, (value) => GetLifecyclePolicyDocumentRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
