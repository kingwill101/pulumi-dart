// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityPolicy.
class GetSecurityPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> securityPolicy;

  GetSecurityPolicyArgs({
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

  factory GetSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securityPolicy: pulumi.Input.asInput<String>(map['securityPolicy']),
    );
  }
}
