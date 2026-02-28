// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lifecycle_policy_document_rule.dart';

/// Result data returned by getLifecyclePolicyDocument.
class GetLifecyclePolicyDocumentResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The above arguments serialized as a standard JSON policy document.
  final String json;
  final List<GetLifecyclePolicyDocumentRule> rules;

  /// Creates a new [GetLifecyclePolicyDocumentResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] The above arguments serialized as a standard JSON policy document.
  /// [rules] Required.
  GetLifecyclePolicyDocumentResult({
    required this.id,
    required this.json,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['json'] = json;
    map['rules'] = pulumi.Input.encodeList<GetLifecyclePolicyDocumentRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory GetLifecyclePolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentResult(
      id: map['id'] as String,
      json: map['json'] as String,
      rules: pulumi.Input.decodeList<GetLifecyclePolicyDocumentRule>(
          map['rules'],
          (value) => GetLifecyclePolicyDocumentRule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
