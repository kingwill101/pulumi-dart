// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationSecurityPolicy.
class GetOrganizationSecurityPolicyComputeBetaArgs {
  final pulumi.Input<String> securityPolicy;

  GetOrganizationSecurityPolicyComputeBetaArgs({
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory GetOrganizationSecurityPolicyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationSecurityPolicyComputeBetaArgs(
      securityPolicy: pulumi.Input.asInput<String>(map['securityPolicy']),
    );
  }
}
