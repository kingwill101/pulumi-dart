// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPolicy.
class GetPolicyArgs {
  final Input<String> platformId;
  final Input<String> policyId;
  final Input<String>? project;

  GetPolicyArgs({
    required this.platformId,
    required this.policyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['platformId'] = platformId;
    map['policyId'] = policyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      platformId: Input.asInput<String>(map['platformId']),
      policyId: Input.asInput<String>(map['policyId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
