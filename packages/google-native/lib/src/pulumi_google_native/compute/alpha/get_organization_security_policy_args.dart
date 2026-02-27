// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationSecurityPolicy.
class GetOrganizationSecurityPolicyArgs {
  final pulumi.Input<String> securityPolicy;

  GetOrganizationSecurityPolicyArgs({
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory GetOrganizationSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSecurityPolicyArgs(
      securityPolicy: pulumi.Input.asInput<String>(map['securityPolicy']),
    );
  }
}
