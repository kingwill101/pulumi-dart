// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationPolicy.
class GetOrganizationPolicyArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> policyId;

  GetOrganizationPolicyArgs({
    required this.organizationId,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['policyId'] = policyId;
    return map;
  }

  factory GetOrganizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyArgs(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      policyId: pulumi.Input.asInput<String>(map['policyId']),
    );
  }
}
