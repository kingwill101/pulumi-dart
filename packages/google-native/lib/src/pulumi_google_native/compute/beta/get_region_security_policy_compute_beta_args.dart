// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionSecurityPolicy.
class GetRegionSecurityPolicyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> securityPolicy;

  GetRegionSecurityPolicyComputeBetaArgs({
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

  factory GetRegionSecurityPolicyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionSecurityPolicyComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      securityPolicy: pulumi.Input.asInput<String>(map['securityPolicy']),
    );
  }
}
