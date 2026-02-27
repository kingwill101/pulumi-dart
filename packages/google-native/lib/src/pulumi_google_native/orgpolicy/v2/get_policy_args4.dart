// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPolicy.
class GetPolicyArgs4 {
  final Input<String> policyId;
  final Input<String>? project;

  GetPolicyArgs4({
    required this.policyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyId'] = policyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPolicyArgs4.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs4(
      policyId: Input.asInput<String>(map['policyId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
