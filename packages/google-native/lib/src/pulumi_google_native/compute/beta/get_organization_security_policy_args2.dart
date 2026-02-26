// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationSecurityPolicy.
class GetOrganizationSecurityPolicyArgs2 {
  final Input<String> securityPolicy;

  GetOrganizationSecurityPolicyArgs2({
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory GetOrganizationSecurityPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSecurityPolicyArgs2(
      securityPolicy: Input.asInput<String>(map['securityPolicy']),
    );
  }
}
