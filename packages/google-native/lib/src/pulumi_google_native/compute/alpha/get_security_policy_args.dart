// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecurityPolicy.
class GetSecurityPolicyArgs {
  final Input<String>? project;
  final Input<String> securityPolicy;

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
      project: Input.asOptionalInput<String>(map['project']),
      securityPolicy: Input.asInput<String>(map['securityPolicy']),
    );
  }
}
