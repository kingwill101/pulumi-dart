// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPolicyBasedRoute.
class GetPolicyBasedRouteArgs {
  final Input<String> policyBasedRouteId;
  final Input<String>? project;

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
      policyBasedRouteId: Input.asInput<String>(map['policyBasedRouteId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
