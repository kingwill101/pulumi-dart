// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lifecycle_policy_document_rule.dart';

/// {@template pulumi_ecr_get_lifecycle_policy_document_get_lifecycle_policy_document_args_doc}
/// Arguments for getLifecyclePolicyDocument.
/// {@endtemplate}
/// {@macro pulumi_ecr_get_lifecycle_policy_document_get_lifecycle_policy_document_args_doc}
class GetLifecyclePolicyDocumentArgs {
  final pulumi.Input<List<GetLifecyclePolicyDocumentRule>> rules;

  /// Creates a new [GetLifecyclePolicyDocumentArgs].
  /// [rules] Required.
  GetLifecyclePolicyDocumentArgs({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<GetLifecyclePolicyDocumentRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetLifecyclePolicyDocumentRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetLifecyclePolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentArgs(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLifecyclePolicyDocumentRule>(map['rules']!, (value) => GetLifecyclePolicyDocumentRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

