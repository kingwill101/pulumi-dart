// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_policy_rule.dart';
import 'resource_policy_rule.dart';
import 'subject.dart';

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
class PolicyRulesWithSubjects {
  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  final List<NonResourcePolicyRule>? nonResourceRules;
  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  final List<ResourcePolicyRule>? resourceRules;
  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  final List<Subject> subjects;

  /// Creates a new [PolicyRulesWithSubjects].
  /// [nonResourceRules] `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  /// [resourceRules] `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  /// [subjects] subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  PolicyRulesWithSubjects({
    this.nonResourceRules,
    this.resourceRules,
    required this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceRules': ?nonResourceRules == null ? null : pulumi.Input.encodeList<NonResourcePolicyRule, Map<String, dynamic>>(nonResourceRules!, (value) => value.toMap()),
      'resourceRules': ?resourceRules == null ? null : pulumi.Input.encodeList<ResourcePolicyRule, Map<String, dynamic>>(resourceRules!, (value) => value.toMap()),
      'subjects': pulumi.Input.encodeList<Subject, Map<String, dynamic>>(subjects, (value) => value.toMap()),
    };
  }

  factory PolicyRulesWithSubjects.fromMap(Map<String, dynamic> map) {
    return PolicyRulesWithSubjects(
      nonResourceRules: map['nonResourceRules'] == null ? null : pulumi.Input.decodeList<NonResourcePolicyRule>(map['nonResourceRules'], (value) => NonResourcePolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      resourceRules: map['resourceRules'] == null ? null : pulumi.Input.decodeList<ResourcePolicyRule>(map['resourceRules'], (value) => ResourcePolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      subjects: pulumi.Input.decodeList<Subject>(map['subjects'], (value) => Subject.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

