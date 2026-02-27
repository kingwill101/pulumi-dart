// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityPolicy.
class GetSecurityPolicyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> securityPolicy;

  GetSecurityPolicyComputeV1Args({
    this.project,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory GetSecurityPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securityPolicy: pulumi.Input.asInput<String>(map['securityPolicy']),
    );
  }
}
