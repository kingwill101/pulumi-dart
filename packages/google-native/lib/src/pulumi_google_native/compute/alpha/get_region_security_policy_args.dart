// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionSecurityPolicy.
class GetRegionSecurityPolicyArgs {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> securityPolicy;

  GetRegionSecurityPolicyArgs({
    this.project,
    required this.region,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory GetRegionSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      securityPolicy: Input.asInput<String>(map['securityPolicy']),
    );
  }
}
