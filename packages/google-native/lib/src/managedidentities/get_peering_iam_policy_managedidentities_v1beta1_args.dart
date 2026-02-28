// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1beta1_get_peering_iam_policy_managedidentities_v1beta1_args_doc}
/// Arguments for getPeeringIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1beta1_get_peering_iam_policy_managedidentities_v1beta1_args_doc}
class GetPeeringIamPolicyManagedidentitiesV1beta1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPeeringIamPolicyManagedidentitiesV1beta1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [peeringId] Required.
  /// [project] Optional.
  GetPeeringIamPolicyManagedidentitiesV1beta1Args({
    int? optionsRequestedPolicyVersion,
    required String peeringId,
    String? project,
  })  : optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        peeringId = pulumi.Input.asInput<String>(peeringId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['peeringId'] = peeringId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPeeringIamPolicyManagedidentitiesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetPeeringIamPolicyManagedidentitiesV1beta1Args(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      peeringId: map['peeringId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
