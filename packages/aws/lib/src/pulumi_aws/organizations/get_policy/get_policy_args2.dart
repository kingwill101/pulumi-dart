// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPolicy.
class GetPolicyArgs2 {
  /// The unique identifier (ID) of the policy that you want more details on. Policy id starts with a "p-" followed by 8-28 lowercase or uppercase letters, digits, and underscores.
  final Input<String> policyId;

  GetPolicyArgs2({
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyId'] = policyId;
    return map;
  }

  factory GetPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs2(
      policyId: Input.asInput<String>(map['policyId']),
    );
  }
}
