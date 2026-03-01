// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_policy_rule_patch_flowcontrol_apiserver_k8s_io_v1beta1.dart';
import 'resource_policy_rule_patch_flowcontrol_apiserver_k8s_io_v1beta1.dart';
import 'subject_patch_flowcontrol_apiserver_k8s_io_v1beta1.dart';

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
class PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta1 {
  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  final List<NonResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta1>? nonResourceRules;
  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  final List<ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta1>? resourceRules;
  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  final List<SubjectPatchFlowcontrolApiserverK8sIoV1beta1>? subjects;

  /// Creates a new [PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta1].
  /// [nonResourceRules] `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  /// [resourceRules] `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  /// [subjects] subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta1({
    this.nonResourceRules,
    this.resourceRules,
    this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceRules': ?nonResourceRules == null ? null : pulumi.Input.encodeList<NonResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta1, Map<String, dynamic>>(nonResourceRules!, (value) => value.toMap()),
      'resourceRules': ?resourceRules == null ? null : pulumi.Input.encodeList<ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta1, Map<String, dynamic>>(resourceRules!, (value) => value.toMap()),
      'subjects': ?subjects == null ? null : pulumi.Input.encodeList<SubjectPatchFlowcontrolApiserverK8sIoV1beta1, Map<String, dynamic>>(subjects!, (value) => value.toMap()),
    };
  }

  factory PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta1(
      nonResourceRules: map['nonResourceRules'] == null ? null : pulumi.Input.decodeList<NonResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta1>(map['nonResourceRules'], (value) => NonResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      resourceRules: map['resourceRules'] == null ? null : pulumi.Input.decodeList<ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta1>(map['resourceRules'], (value) => ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      subjects: map['subjects'] == null ? null : pulumi.Input.decodeList<SubjectPatchFlowcontrolApiserverK8sIoV1beta1>(map['subjects'], (value) => SubjectPatchFlowcontrolApiserverK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

