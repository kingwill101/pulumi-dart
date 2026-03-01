// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_firewall_policy_iam_policy_args_doc}
/// Arguments for getFirewallPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_firewall_policy_iam_policy_args_doc}
class GetFirewallPolicyIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> resource;

  /// Creates a new [GetFirewallPolicyIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [resource] Required.
  GetFirewallPolicyIamPolicyArgs({
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

  factory GetFirewallPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyIamPolicyArgs(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      resource: map['resource'] as String,
    );
  }
}
