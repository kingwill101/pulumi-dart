// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecurityPolicy.
class GetSecurityPolicyArgs2 {
  final Input<String>? project;
  final Input<String> securityPolicy;

  GetSecurityPolicyArgs2({
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

  factory GetSecurityPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      securityPolicy: Input.asInput<String>(map['securityPolicy']),
    );
  }
}
