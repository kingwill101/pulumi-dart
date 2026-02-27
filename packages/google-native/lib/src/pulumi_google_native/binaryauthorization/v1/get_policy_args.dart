// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPolicy.
class GetPolicyArgs {
  final pulumi.Input<String> platformId;
  final pulumi.Input<String> policyId;
  final pulumi.Input<String>? project;

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
      platformId: pulumi.Input.asInput<String>(map['platformId']),
      policyId: pulumi.Input.asInput<String>(map['policyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
