// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_lifecycle_policy_document_rule/get_lifecycle_policy_document_rule.dart';

/// Arguments for getLifecyclePolicyDocument.
class GetLifecyclePolicyDocumentArgs {
  final pulumi.Input<List<GetLifecyclePolicyDocumentRule>> rules;

  GetLifecyclePolicyDocumentArgs({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rules'] = pulumi.Input.mapInputValue<
            List<GetLifecyclePolicyDocumentRule>, List<Map<String, dynamic>>>(
        rules,
        (value) => pulumi.Input.encodeList<GetLifecyclePolicyDocumentRule,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory GetLifecyclePolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentArgs(
      rules: pulumi.Input.asInput<List<GetLifecyclePolicyDocumentRule>>(
          map['rules']),
    );
  }
}
