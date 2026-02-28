// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_policy.dart';

/// {@template pulumi_binaryauthorization_v1_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1_policy_args_doc}
class PolicyArgs {
  /// Optional. A description comment about the policy.
  final pulumi.Input<String>? description;

  /// Optional. GKE platform-specific policy.
  final pulumi.Input<GkePolicy>? gkePolicy;
  final pulumi.Input<String> platformId;

  /// Required. The platform policy ID.
  final pulumi.Input<String> policyId;
  final pulumi.Input<String>? project;

  /// Creates a new [PolicyArgs].
  /// [description] Optional. A description comment about the policy.
  /// [gkePolicy] Optional. GKE platform-specific policy.
  /// [platformId] Required.
  /// [policyId] Required. The platform policy ID.
  /// [project] Optional.
  PolicyArgs({
    String? description,
    GkePolicy? gkePolicy,
    required String platformId,
    required String policyId,
    String? project,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        gkePolicy = pulumi.Input.asOptionalInput<GkePolicy>(gkePolicy),
        platformId = pulumi.Input.asInput<String>(platformId),
        policyId = pulumi.Input.asInput<String>(policyId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final gkePolicyValue = gkePolicy;
    if (gkePolicyValue != null) {
      map['gkePolicy'] =
          pulumi.Input.mapOptionalInputValue<GkePolicy, Map<String, dynamic>>(
              gkePolicyValue, (value) => value.toMap());
    }
    map['platformId'] = platformId;
    map['policyId'] = policyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      gkePolicy: map['gkePolicy'] == null
          ? null
          : GkePolicy.fromMap(
              (map['gkePolicy'] as Map).cast<String, dynamic>()),
      platformId: map['platformId'] as String,
      policyId: map['policyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
