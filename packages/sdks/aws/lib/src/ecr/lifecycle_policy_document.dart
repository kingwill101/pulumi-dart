// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_rule.dart';

/// Represents an ECR lifecycle policy document.
class LifecyclePolicyDocument {
  /// The rules that comprise the lifecycle policy.
  final pulumi.Input<List<LifecyclePolicyRule>> rules;

  /// Creates a new [LifecyclePolicyDocument].
  /// [rules] The rules that comprise the lifecycle policy.
  LifecyclePolicyDocument({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<LifecyclePolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<LifecyclePolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LifecyclePolicyDocument.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyDocument(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<LifecyclePolicyRule>(map['rules']!, (value) => LifecyclePolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

