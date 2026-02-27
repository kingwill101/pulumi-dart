// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityPolicy.
class GetSecurityPolicyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> securityPolicy;

  GetSecurityPolicyComputeBetaArgs({
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

  factory GetSecurityPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securityPolicy: pulumi.Input.asInput<String>(map['securityPolicy']),
    );
  }
}
