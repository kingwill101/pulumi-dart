// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPolicy.
class GetPolicyOrgpolicyV2Args {
  final pulumi.Input<String> policyId;
  final pulumi.Input<String>? project;

  GetPolicyOrgpolicyV2Args({
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

  factory GetPolicyOrgpolicyV2Args.fromMap(Map<String, dynamic> map) {
    return GetPolicyOrgpolicyV2Args(
      policyId: pulumi.Input.asInput<String>(map['policyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
