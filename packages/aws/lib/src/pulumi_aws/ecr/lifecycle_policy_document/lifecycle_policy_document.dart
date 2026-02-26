// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../lifecycle_policy_rule/lifecycle_policy_rule.dart';

/// Represents an ECR lifecycle policy document.
class LifecyclePolicyDocument {
  /// The rules that comprise the lifecycle policy.
  final List<LifecyclePolicyRule> rules;

  LifecyclePolicyDocument({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rules'] = Input.encodeList<LifecyclePolicyRule, Map<String, dynamic>>(
        rules, (value) => value.toMap());
    return map;
  }

  factory LifecyclePolicyDocument.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyDocument(
      rules: Input.decodeList<LifecyclePolicyRule>(
          map['rules'],
          (value) => LifecyclePolicyRule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
