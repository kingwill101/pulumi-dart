// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_organization_security_policy_args_doc}
/// Arguments for getOrganizationSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_organization_security_policy_args_doc}
class GetOrganizationSecurityPolicyArgs {
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [GetOrganizationSecurityPolicyArgs].
  /// [securityPolicy] Required.
  GetOrganizationSecurityPolicyArgs({
    required String securityPolicy,
  }) : securityPolicy = pulumi.Input.asInput<String>(securityPolicy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory GetOrganizationSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSecurityPolicyArgs(
      securityPolicy: map['securityPolicy'] as String,
    );
  }
}
