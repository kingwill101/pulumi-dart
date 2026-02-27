// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPolicyBasedRouteIamPolicy.
class GetPolicyBasedRouteIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> policyBasedRouteId;
  final pulumi.Input<String>? project;

  GetPolicyBasedRouteIamPolicyArgs({
    this.optionsRequestedPolicyVersion,
    required this.policyBasedRouteId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['policyBasedRouteId'] = policyBasedRouteId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPolicyBasedRouteIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyBasedRouteIamPolicyArgs(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      policyBasedRouteId:
          pulumi.Input.asInput<String>(map['policyBasedRouteId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
