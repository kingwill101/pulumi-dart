// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_distinguisher_method_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'policy_rules_with_subjects_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'priority_level_configuration_reference_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// FlowSchemaSpec describes how the FlowSchema's specification looks like.
class FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1alpha1 {
  /// `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
  final FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1alpha1? distinguisherMethod;
  /// `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be non-negative. Note that if the precedence is not specified or zero, it will be set to 1000 as default.
  final int? matchingPrecedence;
  /// `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
  final PriorityLevelConfigurationReferencePatchFlowcontrolApiserverK8sIoV1alpha1? priorityLevelConfiguration;
  /// `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  final List<PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1alpha1>? rules;

  /// Creates a new [FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1alpha1].
  /// [distinguisherMethod] `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
  /// [matchingPrecedence] `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be non-negative. Note that if the precedence is not specified or zero, it will be set to 1000 as default.
  /// [priorityLevelConfiguration] `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
  /// [rules] `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1alpha1({
    this.distinguisherMethod,
    this.matchingPrecedence,
    this.priorityLevelConfiguration,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distinguisherMethod': ?distinguisherMethod == null ? null : distinguisherMethod!.toMap(),
      'matchingPrecedence': ?matchingPrecedence,
      'priorityLevelConfiguration': ?priorityLevelConfiguration == null ? null : priorityLevelConfiguration!.toMap(),
      'rules': ?rules == null ? null : pulumi.Input.encodeList<PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1alpha1(
      distinguisherMethod: map['distinguisherMethod'] == null ? null : FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((map['distinguisherMethod'] as Map).cast<String, dynamic>()),
      matchingPrecedence: map['matchingPrecedence'] == null ? null : map['matchingPrecedence'] as int,
      priorityLevelConfiguration: map['priorityLevelConfiguration'] == null ? null : PriorityLevelConfigurationReferencePatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((map['priorityLevelConfiguration'] as Map).cast<String, dynamic>()),
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1alpha1>(map['rules'], (value) => PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

