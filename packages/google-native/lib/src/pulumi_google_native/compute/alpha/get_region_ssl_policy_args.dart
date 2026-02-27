// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionSslPolicy.
class GetRegionSslPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> sslPolicy;

  GetRegionSslPolicyArgs({
    this.project,
    required this.region,
    required this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['sslPolicy'] = sslPolicy;
    return map;
  }

  factory GetRegionSslPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSslPolicyArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      sslPolicy: pulumi.Input.asInput<String>(map['sslPolicy']),
    );
  }
}
