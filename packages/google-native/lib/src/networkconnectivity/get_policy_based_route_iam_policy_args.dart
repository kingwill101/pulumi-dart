// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_policy_based_route_iam_policy_args_doc}
/// Arguments for getPolicyBasedRouteIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_policy_based_route_iam_policy_args_doc}
class GetPolicyBasedRouteIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> policyBasedRouteId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyBasedRouteIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [policyBasedRouteId] Required.
  /// [project] Optional.
  GetPolicyBasedRouteIamPolicyArgs({
    int? optionsRequestedPolicyVersion,
    required String policyBasedRouteId,
    String? project,
  })  : optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        policyBasedRouteId = pulumi.Input.asInput<String>(policyBasedRouteId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['policyBasedRouteId'] = policyBasedRouteId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPolicyBasedRouteIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyBasedRouteIamPolicyArgs(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      policyBasedRouteId: map['policyBasedRouteId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
