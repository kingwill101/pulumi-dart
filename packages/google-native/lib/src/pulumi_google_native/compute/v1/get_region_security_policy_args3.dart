// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionSecurityPolicy.
class GetRegionSecurityPolicyArgs3 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> securityPolicy;

  GetRegionSecurityPolicyArgs3({
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

  factory GetRegionSecurityPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      securityPolicy: Input.asInput<String>(map['securityPolicy']),
    );
  }
}
