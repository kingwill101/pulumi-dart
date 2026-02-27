// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPolicyBasedRoute.
class GetPolicyBasedRouteArgs {
  final pulumi.Input<String> policyBasedRouteId;
  final pulumi.Input<String>? project;

  GetPolicyBasedRouteArgs({
    required this.policyBasedRouteId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyBasedRouteId'] = policyBasedRouteId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPolicyBasedRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyBasedRouteArgs(
      policyBasedRouteId:
          pulumi.Input.asInput<String>(map['policyBasedRouteId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
