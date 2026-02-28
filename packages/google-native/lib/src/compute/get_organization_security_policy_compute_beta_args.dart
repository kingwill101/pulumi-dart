// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_organization_security_policy_compute_beta_args_doc}
/// Arguments for getOrganizationSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_organization_security_policy_compute_beta_args_doc}
class GetOrganizationSecurityPolicyComputeBetaArgs {
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [GetOrganizationSecurityPolicyComputeBetaArgs].
  /// [securityPolicy] Required.
  GetOrganizationSecurityPolicyComputeBetaArgs({
    required String securityPolicy,
  }) : securityPolicy = pulumi.Input.asInput<String>(securityPolicy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory GetOrganizationSecurityPolicyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationSecurityPolicyComputeBetaArgs(
      securityPolicy: map['securityPolicy'] as String,
    );
  }
}
