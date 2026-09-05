// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lifecycle_policy_document_rule.dart';

/// Result data returned by getLifecyclePolicyDocument.
class GetLifecyclePolicyDocumentResult {
  /// The above arguments serialized as a standard JSON policy document.
  final String? json;
  final List<GetLifecyclePolicyDocumentRule>? rules;

  /// Creates a new [GetLifecyclePolicyDocumentResult].
  /// [json] The above arguments serialized as a standard JSON policy document.
  /// [rules] Optional.
  const GetLifecyclePolicyDocumentResult({
    this.json,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'json': ?json,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLifecyclePolicyDocumentRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetLifecyclePolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentResult(
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLifecyclePolicyDocumentRule>(guardedValue, (value) => GetLifecyclePolicyDocumentRule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
