// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPolicy.
class GetPolicyOrganizationsArgs {
  /// The unique identifier (ID) of the policy that you want more details on. Policy id starts with a "p-" followed by 8-28 lowercase or uppercase letters, digits, and underscores.
  final pulumi.Input<String> policyId;

  GetPolicyOrganizationsArgs({
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyId'] = policyId;
    return map;
  }

  factory GetPolicyOrganizationsArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyOrganizationsArgs(
      policyId: pulumi.Input.asInput<String>(map['policyId']),
    );
  }
}
