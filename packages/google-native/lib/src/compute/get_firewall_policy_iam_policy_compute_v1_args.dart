// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_firewall_policy_iam_policy_compute_v1_args_doc}
/// Arguments for getFirewallPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_firewall_policy_iam_policy_compute_v1_args_doc}
class GetFirewallPolicyIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> resource;

  /// Creates a new [GetFirewallPolicyIamPolicyComputeV1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [resource] Required.
  GetFirewallPolicyIamPolicyComputeV1Args({
    int? optionsRequestedPolicyVersion,
    required String resource,
  }) : optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       resource = pulumi.Input.asInput<String>(resource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'resource': resource,
    };
  }

  factory GetFirewallPolicyIamPolicyComputeV1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFirewallPolicyIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      resource: map['resource'] as String,
    );
  }
}
