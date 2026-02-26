// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionSslPolicy.
class GetRegionSslPolicyArgs {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> sslPolicy;

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
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      sslPolicy: Input.asInput<String>(map['sslPolicy']),
    );
  }
}
