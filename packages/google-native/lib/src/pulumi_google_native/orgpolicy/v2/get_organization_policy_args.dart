// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationPolicy.
class GetOrganizationPolicyArgs {
  final Input<String> organizationId;
  final Input<String> policyId;

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
      organizationId: Input.asInput<String>(map['organizationId']),
      policyId: Input.asInput<String>(map['policyId']),
    );
  }
}
